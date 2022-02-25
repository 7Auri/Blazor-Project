using ProjectUnluCo.Services;

namespace ProjectUnluCo.Models
{
    public class Offer : BaseEntity
    {
        public Offer()
        {

        }

        public string UserName { get; set; }

        public string StatusOffer { get; set; }

        public double PercentOffer { get; set; }
        
        public double OfferPrice{ get; set; }


        public Product Product { get; set; }
        public int ProductId { get; set; }


    }
}
