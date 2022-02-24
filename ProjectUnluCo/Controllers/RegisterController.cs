using Hangfire;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProjectUnluCo.Models;
using ProjectUnluCo.Services;
using ProjeUnluCo.Models;
using System;
using System.Threading.Tasks;


namespace ProjectUnluCo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RegisterController : ControllerBase
    {

        private readonly IUserService _userService;
       
        public RegisterController(IUserService userService)
        {

            _userService = userService;
           
            
        }
       
        [HttpPost]
        public async Task<IActionResult> Register([FromBody] RegisterModel model)
        {
           

            var userExists = await _userService.FindByEmailAsync(model.Email);
            if (userExists != null)
                
                return StatusCode(StatusCodes.Status400BadRequest, new Response { Status = "Error", Message = "User already exists!" });

            var result = await _userService.CreateUser(model);
            if (!result.Succeeded)
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "The information is incorrect. Please check." });
            
            
            BackgroundJob.Schedule<IEmailSender>(x => x.SendEmailAsync(model.Email, model.Username, "WELCOME =)"), TimeSpan.FromSeconds(2));
           
            return Ok();


        }

       

    }
}