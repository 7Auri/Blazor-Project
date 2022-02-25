using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProjectUnluCo.Context;
using ProjectUnluCo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectUnluCo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MyProfileController : ControllerBase
    {

        private readonly DBContext _context;

        public MyProfileController(DBContext context)
        {
            _context = context;
        }


        [HttpGet]
        public IActionResult Get()
        {
            var offer = from c in _context.Offerz
                             select new
                             {
                                 OfferId=c.Id,
                                 Name = c.UserName,
                                 OfferPrice = c.OfferPrice,
                                 Productz=c.ProductId
                             };


            return Ok(offer);


        }


        [HttpPost] //Ürün eklemek için
        public IActionResult Add(Offer model)
        {

            if (!ModelState.IsValid)
                return BadRequest(model);
            
            Offer offer = new Offer()
            {
                UserName=model.UserName,
                OfferPrice=model.OfferPrice,
                ProductId=model.ProductId

            };
            
            _context.Offerz.Add(offer);

            _context.SaveChanges();

            return Ok();

        }


        [HttpGet("name")]
        public IActionResult GetByName(string name)
        {
            var category = (from c in _context.Offerz
                            where c.UserName == name
                            select new
                            {
                                Id = c.Id,
                                Name = c.UserName,
                                Productz = c.ProductId,
                                Offerz=c.OfferPrice,
                                Products = c.Product
                            }).ToList();

            return Ok(category);

        }



        [HttpGet("id")] //product idye göre
        public IActionResult GetById(int id)
        {
            var offer = (from c in _context.Offerz
                            where c.ProductId == id
                            select new
                            {
                                Id = c.Id,
                                UserName = c.UserName,
                                ProductId = c.ProductId,
                                OfferPrice=c.OfferPrice,
                                Offer=c.PercentOffer,
                                Products = c.Product
                            }).ToList();

            return Ok(offer);

        }



    }
}
