import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import '../models/ModelProvider.dart';

class APIService {
  Future<List<Restaurants?>?> getRestaurants() async {
    try {
      print("calling actually now");

      final request = ModelQueries.list(Restaurants.classType);
      final response = await Amplify.API.query(request: request).response;
      List<Restaurants?>? restaurants = response.data?.items;
      print("called actually now");
      print(restaurants?.first?.id);
      // restaurants?.sort((a, b) => b!.createdAt.compareTo(a!.createdAt));
      return restaurants;
    } on Exception catch (e) {
      //_showError(e);
      print("failed actually now" + e.toString());
    }
    return null;
  }

  Future<void> updateRestaurants(Restaurants updatedRestaurant) async {
    try {
      final request = ModelMutations.update(updatedRestaurant);
      await Amplify.API.mutate(request: request).response;
    } on Exception catch (e) {
      // _showError(e);
    }
  }

  Future<void> saveExpense(Restaurants restaurant) async {
    try {
      final request = ModelMutations.create(restaurant);
      final response = await Amplify.API.mutate(request: request).response;

      Restaurants? createdRestaurant = response.data;
      if (createdRestaurant == null) {
        print('errors: ' + response.errors.toString());
        return;
      }
      print('Mutation result: ' + createdRestaurant.id);
    } on Exception catch (e) {
      //_showError(e);
    }
  }

  // void _showError(Exception e) {
  //   scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
  //     backgroundColor: Colors.red,
  //     content: Text(e.toString()),
  //   ));
  // }
}
