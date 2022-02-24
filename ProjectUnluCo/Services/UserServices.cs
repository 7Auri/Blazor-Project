using AutoMapper;
using Microsoft.AspNetCore.Identity;
using ProjectUnluCo.Context;
using ProjectUnluCo.Helpers;
using ProjectUnluCo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace ProjectUnluCo.Services
{
    public class UserService : IUserService
    {
        private readonly UserManager<User> _userManager;
      
        public UserService(UserManager<User> userManager)
        {
            _userManager = userManager;
            
        }

        public async Task<IdentityResult> CreateUser(RegisterModel model)
        {
            User user = new User()
            {   UserName = model.Username,
                SecurityStamp = Guid.NewGuid().ToString(),
                Email = model.Email

            };
            var result = await _userManager.CreateAsync(user, model.Password);
            return result;
        }
 
        public async Task<bool> CheckUser(User user, LoginModel model)
        {
            return user != null && await _userManager.CheckPasswordAsync(user, model.Password);
        }

        public async Task<User> FindByEmailAsync(string email)
        {
            var user = await _userManager.FindByEmailAsync(email);
            return user;
        }


    }
}
