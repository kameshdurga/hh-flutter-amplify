import 'package:flutter/foundation.dart';

class LoggedUser with ChangeNotifier {
  String email = "";

  void setEmail(String localEmail) {
    email = localEmail;
    notifyListeners();
  }
}
