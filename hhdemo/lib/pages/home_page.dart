import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hhdemo/models/LoggedUser.dart';
import 'package:hhdemo/pages/restaurant_image.dart';
import 'package:hhdemo/pages/restaurant_menu.dart';
import 'package:provider/provider.dart';
import '../models/Cart.dart';
import '../models/ModelProvider.dart';

import '../services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final APIService _apiService = APIService();

  List<Restaurants> _restaurants = const [];
  LoggedUser user = LoggedUser();

  @override
  void initState() {
    super.initState();
    _getRestaurants();
    _getLoggedInUser();

    //_createDonor();
  }

  Future<void> _getRestaurants() async {
    try {
      final restaurants = await _apiService.getRestaurants();

      _apiService
          .getRestaurantById("0316cc82-3d2a-4e1a-9d8c-ec9f0eaf7c21")
          .then(
        (value) {
          print("get restaurant by id is");
          print(value!.Name);
        },
      );

      setState(() {
        _restaurants =
            restaurants?.whereType<Restaurants>().toList() ?? const [];
        print("---------------restaurants-------------------------------");
        print(_restaurants);
      });
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text(e.toString()),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Restaurantwidget(),
    );
  }

  Widget Restaurantwidget() {
    var cart = context.watch<Cart>();

    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemCount: _restaurants.length,
      itemBuilder: (context, index) {
        final _restaurantItem = _restaurants[index];

        return GestureDetector(
            onTap: () {
              print("Container clicked" + _restaurantItem.Name!);

              print("cart restaurantis " + cart.restaurant);
              print("_restaurantItem.id is " + _restaurantItem.id);

              if (cart.restaurant != _restaurantItem.id) {
                cart.removeAll();
              }

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => RestaurantMenuPage(
                          id: _restaurantItem.id,
                          name: _restaurantItem.Name!,
                          menu: _restaurantItem.Menu!,
                          zipCode: _restaurantItem.Zipcode.toString())));
            },
            child: RestaurantImagePage(
                imageKey: _restaurantItem.imagekey!,
                name: _restaurantItem.Name!,
                city: _restaurantItem.City!));
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          indent: 20,
          endIndent: 20,
        );
      },
    );
  }

  // void _createDonor() async {
  //   try {
  //     final response = await _apiService.saveUser(user);

  //     setState(() {
  //       print("---------------Saved user-------------------------------");
  //       print(user);
  //     });
  //   } on Exception catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       backgroundColor: Colors.red,
  //       content: Text(e.toString()),
  //     ));
  //   }
  // }

  void _getLoggedInUser() async {
    try {
      final awsUser = await Amplify.Auth.getCurrentUser();
      final userJson = awsUser.signInDetails.toJson();
      var saveduser = _apiService.saveUser(userJson["username"].toString());
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text(e.toString()),
      ));
    }
  }
}
