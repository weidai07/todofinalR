using Microsoft.EntityFrameworkCore;

namespace BestRestaurant.Models
{
  public class BestRestaurantContext : DbContext
  {
    public virtual DbSet<Restaurant> Restaurants{ get; set; }

    public BestRestaurantContext(DbContextOptions options) : base(options) { }
  }
}