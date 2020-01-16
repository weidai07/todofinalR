namespace BestRestaurant.Models
{
  public class Restaurant
  {
    public int RestaurantId { get; set; } 
    public string CuisineType { get; set; } ///Type
    public string RestaurantName { get; set; } //Name
    public string Address { get; set; } //(Date field deleted)Gender
    public int Phone { get; set; } //Breed
    public int FoodCuisineId { get; set; }
    
    public virtual FoodCuisine FoodCuisine { get; set; }
  }
}