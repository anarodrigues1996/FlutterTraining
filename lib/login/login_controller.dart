import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginController {
  // ignore: non_constant_identifier_names
  void Login(String email, String password, BuildContext context) {
    if (kDebugMode) {
      print(email);
      print(password);
    }
    if(email == "admin" && password == '123') {
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }
}
