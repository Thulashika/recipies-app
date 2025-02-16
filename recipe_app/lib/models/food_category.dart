import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipe_app/models/food.dart';

class FoodCategory {
  final String id;
  final String title;

  /// color for the widget in the home screen
  Color color ;
  
  /// availabel food under this category
  List<Food>? availableRecipe =[];

  FoodCategory({
    required this.id,
    required this.title, 
    this.color= Colors.green, 
    this.availableRecipe
    });
}