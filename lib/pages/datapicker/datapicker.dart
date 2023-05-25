import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataPicker extends StatefulWidget {
  const DataPicker({super.key});

  @override
  State<DataPicker> createState() => _DataPickerState();
}

class _DataPickerState extends State<DataPicker> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: TextField(
          controller: dateController,
          decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today_rounded),
              labelText: 'Selecione a Data'),
          onTap: () async {
            DateTime? pickeddate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1460),
                lastDate: DateTime(2100));

            if (pickeddate != null) {
              setState(() {
                dateController.text=DateFormat('dd-MM-yyyy').format(pickeddate);
              });
            }
          },
        ),
      ),
    );
  }
}
