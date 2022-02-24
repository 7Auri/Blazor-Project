using Microsoft.AspNetCore.Identity;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace ProjectUnluCo.Models
{
    public class LoginModel
    {

        /* [Required]
        public string Username { get; set; }*/

        [DisplayName("Email"), Required(ErrorMessage = "Email giriniz"),DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [DisplayName("Password"), Required(ErrorMessage = "Parola giriniz"), MinLength(8), MaxLength(20), DataType(DataType.Password)]
        public string Password { get; set; }

      
    }
}
