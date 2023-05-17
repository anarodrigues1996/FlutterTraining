import 'package:flutter/material.dart';
import 'package:flutter_teste/pages/login/login_controller.dart';
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
                  // const Icon(
                  //   Icons.lock,
                  //   size: 100,
                  //   color: Colors.blue,
                  // ),
                  const Text("Login", style: TextStyle(fontSize: 30)),
                  Container(
                    height: 20,
                  ),
                  const SizedBox(height: 20),
                  MyInput(
                    hintText: "Email",
                    controller: usernameController,
                  ),
                  const SizedBox(height: 10),
                  MyInput(
                      hintText: "Password",
                      controller: passwordController,
                      isPassword: true),
                  const SizedBox(height: 10),
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 25),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       Text(
                  //         'Forgot Password?',
                  //         style: TextStyle(fontSize: 10, color: Colors.blue, fontWeight: FontWeight.bold),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          )
                      
                      ),
                      onPressed: () {
                        controller.Login(usernameController.text,
                            passwordController.text, context);
                      },
                     child: const Center(
                       child: Text(
                         'Entrar',
                         style: TextStyle(color: Colors.black),
                       ),
                     ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Não tens uma conta?'),
                      InkWell(
                      onTap: () {
                         Navigator.of(context).pushReplacementNamed('/');
                      },
                      child: const Text('Regista-te', 
                      style: TextStyle(
                      color: Colors.blue, 
                      fontWeight: FontWeight.bold, 
                      decoration: TextDecoration.underline,))
                      )
                    ],
                  )
                ],
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}
