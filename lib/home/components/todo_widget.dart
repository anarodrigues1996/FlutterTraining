import 'package:flutter/material.dart';

class ToDoWidget extends StatelessWidget {
  String valorTexto;
  ToDoWidget({super.key, required this.valorTexto});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
