import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Table(
          border: TableBorder.all(color:Colors.black),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: const [
             TableRow(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              children: [
               
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Nome'),
                  ),

                ),
                 TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Tarefas'),
                  ),

                ),
                 TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('Estado'),
                  ),

                )
              ]
            ),
          
          ],
        ),
        ),
        
    );
  }
}