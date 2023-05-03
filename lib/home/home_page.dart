import 'package:flutter/material.dart';
import 'package:flutter_teste/home/components/todo_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),),

      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(children: [
          const Text("Home Page"),
          ToDoWidget(valorTexto: "qlql coisa 1"),
          ToDoWidget(valorTexto: "qlql coisa 2"),
          ToDoWidget(valorTexto: "qlql coisa 3"),
        ]),
      ),

    );
  }
}