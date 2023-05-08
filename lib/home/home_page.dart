import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_teste/home/components/todo_widget.dart';
import 'package:flutter_teste/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(children: [
            const Text("Home Page"),
            for (int i = 0; i < controller.minhasTarefas.length; i++)
              ToDoWidget(valorTexto: controller.minhasTarefas[i]),
          ]),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                  accountName: Text('Ana Rodrigues'),
                  accountEmail: Text('ana@gmail.com')),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  if (kDebugMode) {
                    print('Home');
                  }
                },
              ),
              ListTile(
                leading: Icon(Icons.task),
                title: Text("Tarefas"),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("Sobre"),
              ),
              ListTile(
                leading: Icon(Icons.key),
                title: Text("Logout"),
              )
            ],
          ),
        ));
  }
}
