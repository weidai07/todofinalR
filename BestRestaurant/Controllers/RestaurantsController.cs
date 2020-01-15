using System; 
using Microsoft.AspNetCore.Mvc;
using BestRestaurant.Models;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace BestRestaurant.Controllers
{
  public class RestaurantsController : Controller
  {
    private readonly BestRestaurantContext _db;

    public RestaurantsController(BestRestaurantContext db)
    {
      _db = db;
    }

    public ActionResult Index()
    {
      List<Restaurant> model = _db.Restaurants.ToList();
      return View(model);
    }
    public ActionResult Create()
    {
    return View();
    }

    [HttpPost]
    public ActionResult Create(Restaurant restaurant)
    {
      _db.Restaurants.Add(restaurant);
      _db.SaveChanges();
      return RedirectToAction("Index");
    }
    public ActionResult Details(int id)
    {
    Restaurant thisRestaurant= _db.Restaurants.FirstOrDefault(restaurants => restaurants.RestaurantId == id);
    return View(thisRestaurant);
    }

    public ActionResult Edit(int id)
    {
      //Console.WriteLine("id" + id);
        var thisRestaurant = _db.Restaurants.FirstOrDefault(restaurants => restaurants.RestaurantId == id);
        //Console.WriteLine("thisRestaurant" + id);
        return View(thisRestaurant);
    }

    [HttpPost]
    public ActionResult Edit(Restaurant restaurant)
    {
        _db.Entry(restaurant).State = EntityState.Modified;
        _db.SaveChanges();
        return RedirectToAction("Index");
    }
  }
}