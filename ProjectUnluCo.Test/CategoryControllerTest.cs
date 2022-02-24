using Microsoft.AspNetCore.Mvc.Testing;
using ProjectUnluCo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace ProjectUnluCo.Test
{
    public class CategoryControllerTest : IClassFixture<ManagerApplicationFactory>
    {
        private readonly WebApplicationFactory<TestStartup> _factory;

        public CategoryControllerTest(ManagerApplicationFactory factory)
        {
            _factory = factory;
        }

        [Fact]
        public async Task Get_Category()
        {
          
            var client = _factory.CreateClient();

     
            var response = await client.GetAsync("http://localhost:3000/api/category");

            Assert.Equal(HttpStatusCode.OK, response.StatusCode);

            var categoryJson = await response.Content.ReadAsStringAsync();
            var category = System.Text.Json.JsonSerializer.Deserialize<List<Category>>(categoryJson);
   
            Assert.NotNull(category);
            Assert.NotEmpty(category);
            
        }

        [Fact]
        public async Task Post_Category()
        {

            Category model = new Category {Name = "test",CategoryId=99,ImageUrl="testtest",Products = { } };

            var client = _factory.CreateClient();

            var content = new StringContent(System.Text.Json.JsonSerializer.Serialize(model), Encoding.UTF8, "application/json");


            var response = await client.PostAsync("http://localhost:3000/api/category", content);
            Assert.Equal(HttpStatusCode.OK, response.StatusCode);


            var responseCategory = await client.GetAsync("http://localhost:3000/api/category");
           
            Assert.Equal(HttpStatusCode.OK, responseCategory.StatusCode);
            var postJson = await responseCategory.Content.ReadAsStringAsync();
            var post = System.Text.Json.JsonSerializer.Deserialize<List<Category>>(postJson);

            Assert.NotNull(post);
            Assert.NotEmpty(post);
     

        }
    }
}
