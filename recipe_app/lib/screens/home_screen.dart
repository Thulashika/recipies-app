
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:recipe_app/components/category_grid_item.dart';
import 'package:recipe_app/components/custom_grid.dart';
import 'package:recipe_app/data/sample_categories.dart';
import 'package:recipe_app/routes/router_functions.dart';

import 'package:recipe_app/components/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     'Recipe App',
          //     style: TextStyle(
          //       fontSize: 36,
          //       fontWeight: FontWeight.w900,
          //       color: Colors.grey.shade800,
                
          //     ),
          //     // style: GoogleFonts.inter(),
          //     ),
          // ),

           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Recipe App',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey.shade800,
                    ),
                    // style: GoogleFonts.lato(),
                  ),
                ),
          
      
            const Gap(8),
            Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    );
                  },
                ),
              ],
           ),
      
            // ...foodCategories.map((Category) => Text(Category)),
      
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: foodCategories.length,
            //     itemBuilder: (ctx, index) {
            //       return Padding(
            //         padding: EdgeInsets.symmetric(vertical: 60),
            //         child: Text(foodCategories[index]),
            //       ); 
            //     },
            //     // children: foodCategories
            //     // .map((Category) => Padding(
            //     //     padding: EdgeInsets.symmetric(vertical: 60),
            //     //     child: Text(Category),
            //     //   )).toList()
            //     // ,
            //   ),
            // )
            
      
            CustomGrid(
              items: foodCategories,
              child: (Category) => CategoryGridItem(
            Category, 
            onTap: () {
              navigateToFoodRecipiesScreen(context, Category);
            },
            ),
            )
         ],
        ),
      ),
    );
  }
}
