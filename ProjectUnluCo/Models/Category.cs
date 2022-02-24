using Microsoft.AspNetCore.Components;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectUnluCo.Models
{
    public class Category
    {
        
        public int CategoryId { get; set; }
        public string Name { get; set; }
        public string ImageUrl { get; set; }
        public ICollection<Product> Products { get; set; }
    }
}