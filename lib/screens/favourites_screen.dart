import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  FavouriteScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Container(
        child: Center(
          child: Text(
            'You have no favourites yet - start adding some!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItem(
            id: favouriteMeals[i].id,
            title: favouriteMeals[i].title,
            imageUrl: favouriteMeals[i].imageUrl,
            affordability: favouriteMeals[i].affordability,
            complexity: favouriteMeals[i].complexity,
            duration: favouriteMeals[i].duration,
          );
        },
        itemCount: favouriteMeals.length,
      );
    }
  }
}
