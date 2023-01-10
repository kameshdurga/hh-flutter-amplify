import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:hhdemo/models/LoggedUser.dart';

import '../models/Cart.dart';
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
      print(restaurants?.length);
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

  Future<String> saveOrderItem(OrderItem orderItem) async {
    try {
      final request = ModelMutations.create(orderItem);
      final response = await Amplify.API.mutate(request: request).response;

      OrderItem? createdOrderItem = response.data;
      if (createdOrderItem == null) {
        print('errors: ' + response.errors.toString());
        return "error";
      }
      print('Mutation result: ' + createdOrderItem.id);
      return createdOrderItem.id;
    } on Exception catch (e) {
      //_showError(e);
    }
    return "";
  }

  Future<void> saveCart(Cart cart, String email) async {
    try {
      OrderItem orderMainItem = OrderItem(
          usersID: email,
          ShopId: cart.restaurant,
          Status: "Created",
          LineItemId: "0");
      Future<String> orderIdFuture = saveOrderItem(orderMainItem);

      int counter = 1;

      orderIdFuture.then((orderID) {
        for (var item in cart.products) {
          OrderItem orderItem = OrderItem(
              id: orderID,
              usersID: email,
              ShopId: cart.restaurant,
              Status: "New",
              LineItemId: counter.toString(),
              ItemSKU: item.item);

          saveOrderItem(orderItem);
          counter = counter + 1;
        }
      });
    } on Exception catch (e) {
      //_showError(e);
    }
  }

  Future<String> saveUser(LoggedUser loggedUser) async {
    try {
      Users user = Users(Email: loggedUser.email, UserStatus: "Donor");
      final request = ModelMutations.create(user);
      final response = await Amplify.API.mutate(request: request).response;

      Users? userResponse = response.data;
      if (userResponse == null) {
        print('errors: ' + response.errors.toString());
        return "error";
      }
      print('Mutation result: ' + userResponse.id);
      return userResponse.id;
    } on Exception catch (e) {
      //_showError(e);
    }
    return "";
  }
}
