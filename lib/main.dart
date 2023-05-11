import 'package:flutter/material.dart';
import 'package:flutter_teste/pages/home/home_page.dart';
import 'package:flutter_teste/pages/login/login.dart';
import 'package:flutter_teste/pages/signUp/signup.dart';

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
        '/':(context) => const SignUpPage(),
      },
    );
  }
}

