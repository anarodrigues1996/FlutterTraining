import 'package:flutter/material.dart';

class ToDoWidget extends StatelessWidget {
  String valorTexto;
  ToDoWidget({super.key, required this.valorTexto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 300,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(valorTexto),
        ),
      ),
    );
  }
}
