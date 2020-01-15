using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using BestRestaurant.Models;
using System;
using MySql.Data.MySqlClient;

namespace BestRestaurant.Tests
{
  [TestClass]
  public class ItemTest : IDisposable
  {
    public void Dispose()
    {
      Item.ClearAll();
    }

    public ItemTest()
    {
      DBConfiguration.ConnectionString = "server=localhost;user id=root;password=epicodus;port=3306;database=to_do_list_test;";
    }

    // [TestMethod]
    // public void ItemConstructor_CreatesInstanceOfItem_Item()
    // {
    //   Item newItem = new Item("test");
    //   Assert.AreEqual(typeof(Item), newItem.GetType());
    // }

    // [TestMethod]
    // public void GetDescription_ReturnsDescription_String()
    // {
    //   //Arrange
    //   string description = "Walk the dog.";

    //   //Act
    //   Item newItem = new Item(description);
    //   string result = newItem.Description;

    //   //Assert
    //   Assert.AreEqual(description, result);
    // }

    // [TestMethod]
    // public void SetDescription_SetDescription_String()
    // {
    //   //Arrange
    //   string description = "Walk the dog.";
    //   Item newItem = new Item(description);

    //   //Act
    //   string updatedDescription = "Do the dishes";
    //   newItem.Description = updatedDescription;
    //   string result = newItem.Description;

    //   //Assert
    //   Assert.AreEqual(updatedDescription, result);
    // }

    [TestMethod]
    public void GetAll_ReturnsEmptyListFromDatabase_AnimalList()
    {
      // Arrange
      List<Animal> newList = new List<Animal> { };

      // Act
      List<Animal> result = Animal.GetAll();

      // Assert
      CollectionAssert.AreEqual(newList, result);
    }

    [TestMethod]
    public void GetAll_ReturnsAnimals_AnimalList()
    {
      //Arrange
      string type01 = "Walk the dog"; 
      string type02 = "Wash the dishes";
      Animal newAnimal1 = new Animal(type01);
      newAnimal1.Save();
      Animal newAnimal2 = new Animal(type02);
      newAnimal2.Save();
      List<Animal> newList = new List<Animal> { newAnimal1, newAnimal2 };

      //Act
      List<Animal> result = Animal.GetAll();

      //Assert
      CollectionAssert.AreEqual(newList, result);
    }

    // [TestMethod]
    // public void GetId_ItemsInstantiateWithAnIdAndGetterReturns_Int()
    // {
    //   //Arrange
    //   string description = "Walk the dog.";
    //   Item newItem = new Item(description);

    //   //Act
    //   int result = newItem.Id;

    //   //Assert
    //   Assert.AreEqual(1, result);
    // }

    [TestMethod]
    public void Find_ReturnsCorrectAnimalFromDatabase_Animal()
    {
      //Arrange
      Animal newAnimal = new Animal("Mow the lawn");
      newAnimal.Save();
      Animal newAnimal2 = new Animal("Wash dishes");
      newAnimal2.Save();

      //Act
      Animal foundAnimal = Animal.Find(newAnimal.Id);
      //Assert
      Assert.AreEqual(newAnimal, foundAnimal);
    }

    [TestMethod]
    public void Equals_ReturnsTrueIfDescriptionsAreTheSame_Animal()
    {
      // Arrange, Act
      Animal firstAnimal = new Animal("Mow the lawn");
      Animal secondAnimal = new Animal("Mow the lawn");

      // Assert
      Assert.AreEqual(firstAnimal, secondAnimal);
    }

    [TestMethod]
    public void Save_SavesToDatabase_AnimalList()
    {
      //Arrange
      Animal testAnimal = new Animal("Mow the lawn");

      //Act
      testAnimal.Save();
      List<Animal> result = Animal.GetAll();
      List<Animal> testList = new List<Animal> { testAnimal };

      //Assert
      CollectionAssert.AreEqual(testList, result);
    }
  }
}