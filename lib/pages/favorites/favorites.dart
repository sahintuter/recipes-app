import 'package:flutter/material.dart';
import 'package:recipes_app/product/constants/string_constants.dart';
import 'package:recipes_app/product/services/favorits_service.dart';
import 'package:recipes_app/product/utility/color_utility.dart';
import 'package:recipes_app/product/widgets/appbar/custom_appbar.dart';
import 'package:recipes_app/product/widgets/recipeCard/recipe_card.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {

final favoriteRecipes = FavoritsService.favoritesRecipes;

    return  Scaffold(
        backgroundColor: ColorUtility.appBgColor,
        appBar: const CustomAppbar(appbarText: StringConstants.favoriler),
        body: ListView.builder(
          itemCount: favoriteRecipes.length,
          itemBuilder: (context,index){
            return RecipeCard(recipe: favoriteRecipes[index]);
          },
        ),
        );
  }
}
