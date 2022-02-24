using ProjectUnluCo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Threading.Tasks;

namespace ProjectUnluCo.Services
{
    public interface IEmailSender
    {

        Task SendEmailAsync(string email, string subject, string message);

        Task Execute(string email, string subject, string message);
        
    }
}
