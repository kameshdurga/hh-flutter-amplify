import 'package:flutter/foundation.dart';

import 'Menu.dart';

class Cart with ChangeNotifier {
  List<Menu> products = [];

  double get total {
    return products.fold(0.0, (double currentTotal, Menu nextProduct) {
      return currentTotal + double.parse(nextProduct.price);
    });
  }

  void addToCart(Menu product) => products.add(product);
  void removeFromCart(Menu product) {
    products.remove(product);
    notifyListeners();
  }
}
