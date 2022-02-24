
using Hangfire;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using ProjectUnluCo.Models;
using ProjectUnluCo.Services;
using System;
using System.Threading.Tasks;


namespace ProjectUnluCo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly SignInManager<User> _signInManager;
        private readonly TokenGenerator _tokenGenerator;
        private readonly UserManager<User> _userManager;
        private readonly IUserService _userService;
        private readonly IConfiguration _configuration;
        private readonly IEmailSender _emailSender;
        public LoginController(TokenGenerator tokenGenerator, IConfiguration configuration, IUserService userService, UserManager<User> userManager, IEmailSender emailSender, SignInManager<User> signInManager)
        {
            _tokenGenerator = tokenGenerator;
            _configuration = configuration;
            _userService = userService;
            _userManager = userManager;
            _emailSender = emailSender;
            _signInManager = signInManager;
        }

        [HttpPost]
        public async Task<IActionResult> Login([FromBody]LoginModel model)
        {
            if (ModelState.IsValid)
            {
                User user = await _userManager.FindByEmailAsync(model.Email);
                if (user != null)
                {
                    await _signInManager.SignOutAsync();
                    Microsoft.AspNetCore.Identity.SignInResult result = await _signInManager.PasswordSignInAsync(user, model.Password, false, true);
                    if (result.Succeeded)
                    {
                        TokenGenerator generator = new TokenGenerator(_configuration);
                        var token = await generator.GenerateToken(user);
                        return Ok(token);
                    }


                    if (result.IsLockedOut)
                    {
                        BackgroundJob.Schedule<IEmailSender>(x => x.SendEmailAsync(model.Email, "Incorrect Entry 3 times", "Block =/"), TimeSpan.FromSeconds(2));
                        
                        return Unauthorized("Incorrect login 3 times. You have been blocked");
                    }
                }
               
            }
            return Unauthorized("Login Failed: Invalid Email or password");
        }
    }

}

