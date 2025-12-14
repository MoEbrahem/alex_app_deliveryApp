import 'package:alex_app_task/homeItems/itemModel.dart';
import 'package:flutter/material.dart';

List itemsList = [
  ItemModel(
      price: "\$12.58",
      title: "Pizza Clásica",
      subTitle: "Salsa clásica de la casa",
      image: "assets/images/pizzaClassic.png",
      favIcon: Icons.favorite_outline,
      isFav: false),
  ItemModel(
      price: "\$12.58",
      title: "Hamburguesa mix",
      subTitle: "Doble carne con queso",
      image: "assets/images/classicBurger.png",
      favIcon: Icons.favorite,
      isFav: true),
  ItemModel(
      price: "\$12.58",
      title: "Pizza Clásica",
      subTitle: "Salsa clásica de la casa",
      image: "assets/images/pizzaClassic.png",
      favIcon: Icons.favorite,
      isFav: false),
  ItemModel(
      price: "\$12.58",
      title: "Hamburguesa mix",
      subTitle: "Doble carne con queso",
      image: "assets/images/classicBurger.png",
      favIcon: Icons.favorite,
      isFav: false),
];
