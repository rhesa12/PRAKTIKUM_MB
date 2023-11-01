import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'sapu',
        iconPath: 'assets/sapu.jpg',
        boxColor: Color(0xff9DCEFF)));

    categories.add(CategoryModel(
        name: 'rainbow',
        iconPath: 'assets/rainbow.jpg',
        boxColor: Color(0xffEEA4CE)));

    categories.add(CategoryModel(
        name: 'Platy',
        iconPath: 'assets/platy.jpg',
        boxColor: Color(0xff9DCEFF)));

    categories.add(CategoryModel(
        name: 'cupang',
        iconPath: 'assets/ikan1.jpg',
        boxColor: Color(0xffEEA4CE)));

    return categories;
  }
}
