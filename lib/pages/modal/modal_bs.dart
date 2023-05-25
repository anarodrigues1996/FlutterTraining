import 'package:flutter/material.dart';

class ModalPage extends StatefulWidget {
  const ModalPage({super.key});

  @override
  State<ModalPage> createState() => _ModalPageState();
}

class _ModalPageState extends State<ModalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modal"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Modal Dialog"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) =>AlertDialog(
                title: const Text('Ola'),
                content: const Text('Tudo bem, Ana?'),
                actions: [
                  TextButton(
                      onPressed: () {
                         const snackBar =SnackBar(
                        content: Text('Estou bem!')
                        );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.of(context).pop();
                      },
                      child: const Text('Sim')),
                  TextButton(onPressed: () {
                    const snackBar = SnackBar(
                        content: Text('Estou mal!'),
                       );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.of(context).pop();
                  }, 
                  child: const Text('Nao')),
                ],
              ),
            );
            
          },
          
        ),
        
      ),
    );
  }
}
