using Microsoft.AspNetCore.Identity;
using ProjectUnluCo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace ProjectUnluCo.Services
{
    public interface IUserService
    {
        public Task<IdentityResult> CreateUser(RegisterModel model);
        public Task<bool> CheckUser(User user, LoginModel model);
        public Task<User> FindByEmailAsync(string email);
       
           
    }
}
