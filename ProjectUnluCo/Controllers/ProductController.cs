using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProjectUnluCo.Context;
using ProjectUnluCo.Models;
using ProjeUnluCo.Models;
using System;
using System.Linq;

namespace ProjectUnluCo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly DBContext _context;

        public ProductController(DBContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Get()
        {
            var product = from c in _context.Products
                             select new
                             {
                                 Id = c.Id,
                                 Brand = c.Brand,
                                 Name = c.Name,
                                 Description = c.Description,
                                 ImageUrl = c.ImageUrl,
                                 Color = c.Color,
                                 OriginalPrice = c.OriginalPrice,
                                 IsOfferable = c.IsOfferable,
                                 usingStatus = c.usingStatus,
                                 CategoryId = c.CategoryId
                             };


            return Ok(product);


        }

        [HttpGet("/ad")]
        public IActionResult GetById(int id)
        {
            var product = _context.Products.FirstOrDefault(c => c.Id == id);
            if (product == null)
            {
                return NotFound();
            }
            return Ok(product);
        }

        [HttpPost] //Ürün eklemek için
        public IActionResult Add(Product model)
        {


            if (!ModelState.IsValid)
                return BadRequest(model);

            Product product = new Product()
            {
                Id = model.Id,
                Brand = model.Brand,
                Name = model.Name,
                Description = model.Description,
                ImageUrl = model.ImageUrl,
                Color = model.Color,
                OriginalPrice = model.OriginalPrice,
                IsOfferable = model.IsOfferable,
                usingStatus = model.usingStatus,
                CategoryId = model.CategoryId,
                
            };

            _context.Products.Add(product);
            _context.SaveChanges();

            return Ok();


        }
        [HttpPut("offer")] //teklif vermek
        public IActionResult GiveOffer(Product model)
        {
            var pro = _context.Products.SingleOrDefault(x => x.Id == model.Id);
            if (pro == null) { return StatusCode(StatusCodes.Status400BadRequest, new Response { Status = "Error", Message = "Böyle bir ürün yok" }); }
            if (pro.IsOfferable == false) { return StatusCode(StatusCodes.Status400BadRequest, new Response { Status = "Error", Message = "Teklife Kapalı" }); }
            if (model.OfferPrice < 0) { return StatusCode(StatusCodes.Status400BadRequest, new Response { Status = "Error", Message = "Eksi değer girilemez" }); }
           
            pro.OfferPrice = model.OfferPrice;

            _context.SaveChanges();

            return Ok(model.Id);
        }
        [HttpDelete("delete")]
        public IActionResult DeleteCat(int id)
        {
            var product = _context.Products.SingleOrDefault(x => x.Id == id);
            if (product == null)
            {
                return BadRequest();
            }
            _context.Products.Remove(product);
            _context.SaveChanges();

            return Ok();


        }


    }
}
