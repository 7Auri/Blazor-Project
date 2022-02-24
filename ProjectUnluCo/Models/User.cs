using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectUnluCo.Models
{
   
    public class User:IdentityUser
    {
      

        /* public byte[] PasswordSalt { get; set; }
         public byte[] PasswordHash { get; set; }*/
    }
}
