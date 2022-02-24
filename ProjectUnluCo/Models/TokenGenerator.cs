using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace ProjectUnluCo.Models
{
    public class TokenGenerator
    {

        private readonly IConfiguration _configuration;
        public TokenGenerator(IConfiguration configuration)
        {

            _configuration = configuration;
        }


        public async Task<Token> GenerateToken(User user)
        {

            var authClaims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, user.UserName),
                    new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                };



            var authSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JWT:Key"]));

            var token = new JwtSecurityToken(
                issuer: _configuration["JWT:Issuer"],
                audience: _configuration["JWT:Audience"],
                expires: DateTime.Now.AddHours(3),
                claims: authClaims,
                signingCredentials: new SigningCredentials(authSigningKey, SecurityAlgorithms.HmacSha256)
                );


            return new Token
            {
                AccessToken = new JwtSecurityTokenHandler().WriteToken(token),
                Expiration = token.ValidTo,

            };
        }

    }
}