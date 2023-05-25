import 'package:flutter/material.dart';
import 'package:flutter_teste/shared/components/my_input.dart';
import 'package:intl/intl.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController moradaController = TextEditingController();
  TextEditingController aniversarioController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                  const Text("Registo", style: TextStyle(fontSize: 30)),
                  Container(
                    height: 20,
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person_2_rounded),
                      labelText: 'Nome'
                    )
                  ),
                   TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email_rounded),
                      labelText: 'email'
                    )
                  ),
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock_rounded),
                      labelText: 'Password'
                    )
                  ),
                   TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.location_city),
                      labelText: 'Morada'
                    )
                  ),
                   TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today_rounded),
                      labelText: 'Aniversario',
                    ),
                    onTap: () async {
            DateTime? pickeddate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1460),
                lastDate: DateTime(2100));

            if (pickeddate != null) {
              setState(() {
                aniversarioController.text=DateFormat('dd-MM-yyyy').format(pickeddate);
              });
            }
          },
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/login');
                      },
                      child: const Center(
                        child: Text(
                          'Registar',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Tens uma conta?',
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed('/login');
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ))
                      ],
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
