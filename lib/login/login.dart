import 'package:flutter/material.dart';
import 'package:flutter_teste/login/login_controller.dart';
import 'package:flutter_teste/shared/components/my_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(context),
      ),
    );
  }

  Widget _page(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 40),
        child: SizedBox(
          width: 400,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: avoid_unnecessary_containers
    
                  const Text("Login", style: TextStyle(fontSize: 30)),
                  Container(
                    height: 20,
                  ),
                  const SizedBox(height: 50),
                  MyInput(hintText:"Username", controller: usernameController, ),
                  const SizedBox(height: 20),
                  MyInput(hintText: "Password", controller: passwordController, isPassword: true),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      controller.Login(usernameController.text,
                          passwordController.text, context);
                    },
                    // ignore: sized_box_for_whitespace
                    child: const Text(
                      'Entrar',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
