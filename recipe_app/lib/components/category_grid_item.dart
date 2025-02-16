import 'package:flutter/material.dart';
import 'package:recipe_app/models/food_category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
    this.Category,{
    super.key,
    this.onTap,
  });

  final FoodCategory Category;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey.shade400,
              blurRadius: 5,
              spreadRadius: 1,
              offset: const Offset(0, 3))
            ],
            borderRadius: BorderRadius.circular(8),
            color: Category.color
          ),
          child: Center(
            child: Text(
              Category.title,
              style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          textAlign: TextAlign.center,
          ))
          ),
      ),
    );
  }
}