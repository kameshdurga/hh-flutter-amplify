import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:hhdemo/models/LoggedUser.dart';
import 'package:hhdemo/models/MenuItems.dart';

import '../models/Cart.dart';
import '../models/Menu.dart';
import '../models/ModelProvider.dart';

class APIService {
  Future<Restaurants?> getRestaurantById(String id) async {
    try {
      print("calling actually now");

      final request = ModelQueries.get(Restaurants.classType, id);
      final response = await Amplify.API.query(request: request).response;
      Restaurants? restaurants = response.data;
      // restaurants?.sort((a, b) => b!.createdAt.compareTo(a!.createdAt));

      return restaurants;
    } on Exception catch (e) {
      //_showError(e);
      print("failed actually now" + e.toString());
    }
    return null;
  }

  Future<List<Restaurants?>?> getRestaurants() async {
    try {
      final request = ModelQueries.list(Restaurants.classType);
      final response = await Amplify.API.query(request: request).response;

      print(response.errors);
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
      print('errors: ' + e.toString());
    }
    return "";
  }

  Future<void> saveCart(Cart cart, String email) async {
    try {
      print("cart.restaurant is ");
      print(cart.restaurant);
      OrderItem orderMainItem = OrderItem(
          DonorUserID: loggedUser.donoruser!.id,
          RestaurantsID: cart.restaurant,
          Status: "Created",
          LineItemId: "0",
          zipcode: cart.zipCode);
      Future<String> orderIdFuture = saveOrderItem(orderMainItem);

      int counter = 1;

      orderIdFuture.then((orderID) {
        for (var item in cart.products) {
          OrderItem orderItem = OrderItem(
              id: orderID,
              DonorUserID: loggedUser.donoruser!.id,
              RestaurantsID: cart.restaurant,
              Status: "New",
              LineItemId: counter.toString(),
              ItemSKU: item.item,
              zipcode: cart.zipCode,
              imageKey: item.imageKey);

          saveOrderItem(orderItem);
          counter = counter + 1;
        }
      });
    } on Exception catch (e) {
      //_showError(e);
    }
  }

  Future<DonorUser?> saveUser(String email) async {
    try {
      final queryPredicate = DonorUser.EMAIL.eq(email);

      final userRequest = ModelQueries.list<DonorUser>(DonorUser.classType,
          where: queryPredicate);
      final userScanResponse =
          await Amplify.API.query(request: userRequest).response;
      List<DonorUser?>? users = await userScanResponse.data?.items;

      if (users != null && users.isNotEmpty) {
        print("user already exist");
        print(users.first!.Email);
        loggedUser.donoruser = users.first!;
        return users.first!;
      }

      DonorUser user = DonorUser(Email: email, UserStatus: "Donor");
      final request = ModelMutations.create(user);
      final response = await Amplify.API.mutate(request: request).response;

      DonorUser? userResponse = response.data;
      if (userResponse == null) {
        print('errors: ' + response.errors.toString());
        return null;
      }
      print('Mutation result: ' + userResponse.id);
      loggedUser.donoruser = userResponse;
      return userResponse;
    } on Exception catch (e) {
      //_showError(e);
    }
    return null;
  }
}
