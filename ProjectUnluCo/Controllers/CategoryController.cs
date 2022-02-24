using ImageUploader;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProjectUnluCo.Context;
using ProjectUnluCo.Models;
using System;
using System.IO;
using System.Linq;


namespace ProjectUnluCo.Controllers
{
 
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
       private readonly DBContext _context;

        public CategoryController(DBContext context)
        {
            _context = context;
        }
        //[Authorize]
        [HttpGet]
        public IActionResult Get()
        {
            var categories = from c in _context.Categories
                             select new
                             {
                                 Id = c.CategoryId,
                                 Name = c.Name,
                                 ImageUrl = c.ImageUrl
                             };
           

            return Ok(categories);


        }
       

        [HttpGet("/id")]
        public IActionResult GetBy(int id)
        {
            var category = _context.Categories.FirstOrDefault(c => c.CategoryId == id);
            if (category == null)
            {
                return NotFound("hata");
            }
            return Ok(category);
        }


        [HttpGet("id")]
        public IActionResult GetById(int id)
        {
            var category = (from c in _context.Categories
                            where c.CategoryId == id
                            select new
                            {
                                Id = c.CategoryId,
                                Name = c.Name,
                                ImageUrl = c.ImageUrl,
                                Products = c.Products
                            }).FirstOrDefault();
          
            return Ok(category);

        }
        [HttpGet("name")]
        public IActionResult GetByName(string name)
        {
            var category = (from c in _context.Categories
                            where c.Name  == name
                            select new
                            {
                                Id = c.CategoryId,
                                Name = c.Name,
                                ImageUrl = c.ImageUrl,
                                Products = c.Products
                            }).FirstOrDefault();

            return Ok(category);

        }
        [HttpPost]
        public IActionResult Create(Category model)
        {


            if (!ModelState.IsValid)
                return BadRequest(model);

            Category category = new()
            {
                CategoryId = model.CategoryId,
                Name = model.Name,
                ImageUrl = model.ImageUrl,
                
            };

            _context.Categories.Add(category);
            _context.SaveChanges();

            return Ok();


        }
    
        [HttpPut]
        public IActionResult Put(int id, [FromBody] Category category)
        {
            var entity = _context.Categories.Find(id);
            if (entity == null)
            {
                return NotFound("No category found against this id...");
            }
            else
            {
                
                entity.Name = category.Name;
                entity.ImageUrl = category.ImageUrl;
                _context.Categories.Add(category);
                _context.SaveChanges();
                return Ok("Category Updated Successfully...");
            }
        }
        
    }
}