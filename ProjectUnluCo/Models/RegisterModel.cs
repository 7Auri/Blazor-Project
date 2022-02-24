
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectUnluCo.Models
{
    public class RegisterModel
    {
        
        [DisplayName("Email"), Required(ErrorMessage = "Email giriniz"), DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        [Required(ErrorMessage ="Ad Giriniz")]
        public string FirstName { get; set; }

        [Required(ErrorMessage ="Soyad Giriniz")]
        public string LastName { get; set; }

        [Required(ErrorMessage ="Kullanıcı Adı Giriniz")]
        public string Username { get; set; }

        [DisplayName("Password"),Required(ErrorMessage = "Parola giriniz"),MinLength(8),MaxLength(20), DataType(DataType.Password)]
        public string Password { get; set; }


    }
}
