import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'Menu.dart';

class Cart with ChangeNotifier {
  List<Menu> products = [];

  String restaurant = "";

  HashMap<String, int> hashMap = HashMap<String, int>();

  String userEmail = "";

  double get total {
    return products.fold(0.0, (double currentTotal, Menu nextProduct) {
      return currentTotal +
          (double.parse(nextProduct.price) *
              hashMap[nextProduct.item]!.toDouble());
    });
  }

  void setRestaurant(String shop) {
    restaurant = shop;
  }

  void setUserEmail(String email) {
    userEmail = email;
  }

  void addToCart(Menu product) {
    if (hashMap.containsKey(product.item)) {
      print('going to if logic value before update: ');

      hashMap.update(product.item, (value) => value + 1);
      // hashMap.update(product, (v) {
      //   print('old value before update: ' + v);
      //   return v + 1;
      // });
    } else {
      products.add(product);
      print('going to else logic value before update: ');

      hashMap.putIfAbsent(product.item, () => 1);
      print('getting value from product: ' + hashMap[product.item].toString());
    }
    notifyListeners();
  }

  int? prodQuantity(Menu product) {
    if (hashMap.containsKey(product.item)) {
      print('getting value from prodQuantity: ' +
          hashMap[product.item].toString());
      return hashMap[product.item];
    }
    return 0;
  }

  void removeFromCart(Menu product) {
    if (hashMap[product.item] == 1) {
      hashMap.remove(product.item);
      products.remove(product);
    } else
      hashMap.update(product.item, (value) => value - 1);
    notifyListeners();
  }
}
