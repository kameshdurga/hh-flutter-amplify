import 'package:flutter/foundation.dart';
import 'package:hhdemo/models/ModelProvider.dart';

class LoggedUser {
  DonorUser? donoruser = null;

  static final LoggedUser _instance = LoggedUser._internal();

  factory LoggedUser() {
    return _instance;
  }

  LoggedUser._internal();
}

final loggedUser = LoggedUser();
