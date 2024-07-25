


import 'package:recipes_app/product/models/recipesModel.dart';

class FavoritsService{

  static final List<Recipe>  _favoritsRecipes = [];


  static List<Recipe> get favoritesRecipes => _favoritsRecipes;



  static void addToFavorites(Recipe recipe){
    if (!_favoritsRecipes.contains(recipe)) {
      _favoritsRecipes.add(recipe);
    }
  }


static void removeFromFavorites(Recipe recipe){

  _favoritsRecipes.remove(recipe);

}

}