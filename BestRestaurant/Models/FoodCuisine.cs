using System.Collections.Generic;

namespace Restaurant.Models
{
    public class FoodCuisine
    {
        public FoodCuisine()
        {
            this.Restaurants = new HashSet<Restaurant>();
        }

        public int FoodCuisineId { get; set; }
        public string FoodCuisineName { get; set; }
        public virtual ICollection<Restaurant> Restaurants { get; set; }
    }
}