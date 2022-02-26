using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProjectUnluCo.Context;
using ProjectUnluCo.Models;
using ProjeUnluCo.Models;
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
                            Id = c.Id,
                            UserName = c.UserName,
                            OfferPrice = c.OfferPrice,
                            Productz = c.ProductId
                        };


            return Ok(offer);


        }


        [HttpPost] //offer eklemek için
        public IActionResult Add(Offer model)
        {

            if (!ModelState.IsValid)
                return BadRequest(model);

            Offer offer = new Offer()
            {
                UserName = model.UserName,
                OfferPrice = model.OfferPrice,
                ProductId = model.ProductId

            };

            _context.Offerz.Add(offer);

            _context.SaveChanges();

            return Ok();

        }


        [HttpGet("name")] // username'ye göre yaptığımız teklifleri görmek için
        public IActionResult GetByName(string name)
        {
            var offer = (from c in _context.Offerz
                         where c.UserName == name
                         select new
                         {
                             Id = c.Id,
                             UserName = c.UserName,
                             ProductId = c.ProductId,
                             OfferPrice = c.OfferPrice,
                             Product = c.Product
                         }).ToArray();

            return Ok(offer);

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
                             OfferPrice = c.OfferPrice,
                             Offer = c.PercentOffer,
                             Products = c.Product
                         }).ToList();

            return Ok(offer);

        }
        [HttpPost("add")] //UserName ile ürün eklemek için
        public IActionResult Add2(OfferFrom offerFrom)
        {
            if (!ModelState.IsValid)
                return BadRequest(offerFrom);
            OfferFrom offer = new()
            {
                UserName = offerFrom.UserName,
                Product = offerFrom.Product

            };

            _context.OfferFromz.Add(offer);
            _context.SaveChanges();

            return Ok();

        }

        [HttpDelete("delete")] // offer silmek
        public IActionResult DeleteCat(int id)
        {
            var offer = _context.Offerz.SingleOrDefault(x => x.ProductId == id);
            if (offer == null)
            {
                return BadRequest();
            }
            _context.Offerz.Remove(offer);
            _context.SaveChanges();

            return Ok();


        }

        [HttpGet("myproduct")] // username'ye göre yaptığımız teklifleri görmek için
        public IActionResult GetBy(string name)
        {
            var offer = (from c in _context.OfferFromz
                         where c.UserName == name
                         select new
                         {
                             Id = c.Id,
                             UserName = c.UserName,
                             ProductId = c.ProductId,
                             Product = c.Product
                         }).ToArray();

            return Ok(offer);

        }

        [HttpGet("idfrom")] // username'ye göre yaptığımız teklifleri görmek için
        public IActionResult GetById2(int id)
        {
            var offer = (from c in _context.OfferFromz
                         where c.ProductId == id
                         select new
                         {
                             Id = c.Id,
                             UserName = c.UserName,
                             Approval = c.Approval,
                             ProductId = c.ProductId,
                             Product = c.Product
                         }).FirstOrDefault();

            return Ok(offer);

        }


        [HttpPut("putforapproval")] //teklif vermek
        public IActionResult GiveOffer(OfferFrom offerFrom)
        {
            var offer = _context.OfferFromz.SingleOrDefault(x => x.Id == offerFrom.ProductId);
            if (offer == null) { return StatusCode(StatusCodes.Status400BadRequest, new Response { Status = "Error", Message = "Böyle bir ürün yok" }); }
           
            offer.Approval = offerFrom.Approval;

            _context.SaveChanges();

            return Ok(offerFrom.ProductId);
        }
    }
}