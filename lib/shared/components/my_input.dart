import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  bool isPassword;
  MyInput({super.key, required this.controller, required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
      var border = OutlineInputBorder(
       borderRadius: BorderRadius.circular(18),
       borderSide: const BorderSide(color: Colors.black));
    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
         enabledBorder: border,
         focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }
}
