using System; 
using Microsoft.AspNetCore.Mvc;
using BestRestaurant.Models;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering; //NLn.

namespace BestRestaurant.Controllers
{
  public class FoodCuisinesController : Controller
  {
    private readonly BestRestaurantContext _db;

    public FoodCuisinesController(BestRestaurantContext db)
    {
      _db = db;
    }

    public ActionResult Index()
    {
      List<FoodCuisine> model = _db.FoodCuisines.ToList();
      return View(model);
    }

    public ActionResult Create()
    {
      return View();
    }

    [HttpPost]
    public ActionResult Create(FoodCuisine foodcuisine)
    {
      _db.FoodCuisines.Add(foodcuisine);
      _db.SaveChanges();
      return RedirectToAction("Index");
    }

    public ActionResult Details(int id)
    {
      FoodCuisine thisFoodCuisine = _db.FoodCuisines.FirstOrDefault(foodcuisine => foodcuisine.FoodCuisineId == id);
      return View(thisFoodCuisine);
    }

    public ActionResult Edit(int id)
    {
      var thisFoodCuisine = _db.FoodCuisines.FirstOrDefault(foodcuisine => foodcuisine.FoodCuisineId == id);
      return View(thisFoodCuisine);
    }

    [HttpPost]
    public ActionResult Edit(FoodCuisine foodcuisine)
    {
      _db.Entry(foodcuisine).State = EntityState.Modified;
      _db.SaveChanges();
      return RedirectToAction("Index");
    }

    public ActionResult Delete(int id)
    {
      var thisFoodCuisine = _db.FoodCuisines.FirstOrDefault(foodcuisine => foodcuisine.FoodCuisineId == id);
      return View(thisFoodCuisine);
    }

    [HttpPost, ActionName("Delete")]
    public ActionResult DeleteConfirmed(int id)
    {
      var thisFoodCuisine = _db.FoodCuisines.FirstOrDefault(foodcuisine => foodcuisine.FoodCuisineId == id);
      _db.FoodCuisines.Remove(thisFoodCuisine);
      _db.SaveChanges();
      return RedirectToAction("Index");
    }
  }
}