import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    TableRow tableRow = const TableRow(children: [
      Padding(
        padding: EdgeInsets.all(10),
        child: Text('Nome'),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text('Tarefas'),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text('Estado'),
      ),
    ]);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Table'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              child: Table(border: TableBorder.all(), children: [
                tableRow,
                tableRow,
                tableRow,
                tableRow,
              ]),
            ),
          ),
        ));
  }
}
