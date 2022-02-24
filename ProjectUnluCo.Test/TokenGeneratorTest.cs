using Microsoft.Extensions.Configuration;
using Moq;
using ProjectUnluCo.Models;
using System;
using Xunit;

namespace ProjectUnluCo.Test
{
    public class TokenGeneratorTest
    {
        [Fact]
        public void GenerateToken_ReturnsToken()
        {
            var mock = new Mock<IConfiguration>();
            mock.SetupGet(x=>x[It.IsAny<string>()]).Returns("testProjectUnluCo");
            //
            var tokenGenerator = new TokenGenerator(mock.Object);
            //
            var token =tokenGenerator.GenerateToken(new User { UserName = "username" });
            //
            Assert.NotNull(token);

        }
    }
}
