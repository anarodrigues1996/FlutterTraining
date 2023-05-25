import 'package:flutter/material.dart';
import 'package:flutter_teste/pages/boostrap/form_bs.dart';
import 'package:flutter_teste/pages/datapicker/datapicker.dart';
import 'package:flutter_teste/pages/home/home_page.dart';
import 'package:flutter_teste/pages/login/login.dart';
import 'package:flutter_teste/pages/signUp/signup.dart';
import 'package:flutter_teste/pages/modal/modal_bs.dart';
import 'package:flutter_teste/pages/table/table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), 
      initialRoute: '/',
      routes: {
        '/login':(context) => const LoginPage(),
        '/home':(context) => const HomePage(),
        '/signup':(context) => const SignUpPage(),
        '/form':(context) => const FormBootStrap(),
        '/modal':(context) => const ModalPage(),
        '/table':(context) => const TablePage(),
        '/':(context) => const DataPicker(),
      },
    );
  }
}

