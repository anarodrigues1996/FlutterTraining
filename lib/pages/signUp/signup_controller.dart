import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUpController {
  // ignore: non_constant_identifier_names
  void Signup(String email, String nome, String morada, int aniversario,
      String password, BuildContext context) {
    if (kDebugMode) {
      print(nome);
      print(morada);
      print(aniversario);
      print(email);
      print(password);
    }
    if (email == "admin" && password == '123') {
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }
}
