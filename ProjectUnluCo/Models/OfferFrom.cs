using ProjectUnluCo.Services;

namespace ProjectUnluCo.Models
{
    public class OfferFrom : BaseEntity
    {
        public OfferFrom()
        { 
        }
        public string UserName { get; set; }
        public Product Product { get; set; }
        public int ProductId { get; set; }
        public bool Approval { get; set; }
    }
}

