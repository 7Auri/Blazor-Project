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
    public class ProductControllerTest : IClassFixture<ManagerApplicationFactory>
    {
        private readonly WebApplicationFactory<TestStartup> _factory;

        public ProductControllerTest(ManagerApplicationFactory factory)
        {
            _factory = factory;
        }

        [Fact]
        public async Task Get_Products()
        {
          
            var client = _factory.CreateClient();

     
            var response = await client.GetAsync("http://localhost:3000/api/product");

            Assert.Equal(HttpStatusCode.OK, response.StatusCode);

            var productJson = await response.Content.ReadAsStringAsync();
            var product = System.Text.Json.JsonSerializer.Deserialize<List<Product>>(productJson);
   
            Assert.NotNull(product);
            Assert.NotEmpty(product);
            
        }

        [Fact]
        public async Task Post_Product()
        {

            Product model = new Product {Name = "test", OriginalPrice = 99, Brand = "yesil" ,CategoryId=99,OfferPercent=99,
            Offers = { },IsOfferable=true,NewOfferPrice=99,Color="tests",Description="testtt",Id=99,IsSold=true,ImageUrl="testtest",usingStatus="new"};

            var client = _factory.CreateClient();

            var content = new StringContent(System.Text.Json.JsonSerializer.Serialize(model), Encoding.UTF8, "application/json");


            var response = await client.PostAsync("http://localhost:3000/api/product", content);
            Assert.Equal(HttpStatusCode.OK, response.StatusCode);


            var responseProducts = await client.GetAsync("http://localhost:3000/api/product");
           
            Assert.Equal(HttpStatusCode.OK, responseProducts.StatusCode);
            var postJson = await responseProducts.Content.ReadAsStringAsync();
            var post = System.Text.Json.JsonSerializer.Deserialize<List<Product>>(postJson);

            Assert.NotNull(post);
            Assert.NotEmpty(post);
     

        }
    }
}
