import 'package:flutter/material.dart';

class UserData {
  static String name = "Екатерина";
  static List<CardData> list = [
    CardData(
        title: "СберПрайм",
        date: "Платеж 9 июля",
        price: "199 ₽ в месяц",
        image: "assets/sberphotoOne.png"),
    CardData(
        title: "Переводы",
        date: "Автопродление 21 августа",
        price: "199 ₽ в месяц",
        image: "assets/sberphotoTwo.png")
  ];
  static List<String> chips = [
    "Еда",
    "Саморазвитие",
    "Технологии",
    "Дом",
    "Досуг",
    "Забота о себе",
    "Наука"
  ];

  UserData();
}

class CardData {
  String title;
  String date;
  String price;
  String image;
  CardData(
      {required this.title,
      required this.date,
      required this.price,
      required this.image});
}


