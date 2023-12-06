import 'package:mealsapp/models/category.dart';
import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';

const categoryList = [
  Category(id: "1", name: "Başlangıçlar", color: Colors.purple),
  Category(id: "2", name: "Ara Sıcaklar", color: Colors.red),
  Category(id: "3", name: "Ana Yemekler", color: Colors.blue),
  Category(id: "4", name: "Tatlılar"),
];

const mealList = [
  Meal(
      id: "1",
      categoryId: "1",
      name: "Mercimek Çorbası",
      imageUrl:
          "https://cdn.yemek.com/uploads/2019/04/salcali-mercimek-corbasi-tarifi.jpg",
      ingredients: ["Mercimek", "Yağ", "Salça", "Su", "Tuz"]),
  Meal(
      id: "2",
      categoryId: "4",
      name: "Katmer",
      imageUrl:
          "https://nostalji.markopos.com/views/nostalji/nostalji_500X-katmer.jpeg",
      ingredients: ["Şeker", "Yağ", "Antep Fıstığı"]),
];
