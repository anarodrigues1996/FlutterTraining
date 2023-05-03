import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_teste/home/home_page.dart';

class LoginController {
  void Login(String email, String password, BuildContext context) {
    if (kDebugMode) {
      print(email);
      print(password);
    }
    if(email == "admin" && password == '123') {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }
}
