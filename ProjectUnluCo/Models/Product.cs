using ProjectUnluCo.Services;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectUnluCo.Models
{
    public class Product: BaseEntity
    {
       

        [Required(ErrorMessage = "Ad Girişi Zorunlu"), MaxLength(100)]
        public string Brand { get; set; }
        public string Name { get; set; }

        [Required(ErrorMessage = "Açıklama Girişi Zorunlu"), MaxLength(500)]
        public string Description { get; set; }

        [Required(ErrorMessage = "Resim Eklemelisiniz")]
        public string ImageUrl { get; set; }
        public string Color { get; set; }

        [Required(ErrorMessage = "Fiyat Bilgisi Giriniz")]
        public double OriginalPrice { get; set; }
       // public double OfferPrice { get; set; }
        public double NewOfferPrice { get; set; }
        public double OfferPercent {get;set;}
        [DefaultValue("False")]
        public bool IsOfferable { get; set; }

        [Required(ErrorMessage = "Kullanım Durumu Giriniz")]
        public string usingStatus { get; set; }

        [Required(ErrorMessage = "Category Id Zorunludur.")]
        public int CategoryId { get; set; }

        [DefaultValue("False")]
        public bool IsSold { get; set; }
        
        public List<Offer> Offers { get; set; }

    }
}
