import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_teste/shared/components/my_input.dart';

class FormBootStrap extends StatefulWidget {
  const FormBootStrap({super.key});

  @override
  State<FormBootStrap> createState() => _FormBootStrapState();
}

class _FormBootStrapState extends State<FormBootStrap> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: 800,
            child: BootstrapContainer(
              fluid: true, 
              children: [
              const SizedBox( width: 20),
              BootstrapRow(height: 80, children: [
                
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-6 ',
                  child: MyInput(
                    controller: usernameController,
                    hintText: 'username',
                  ),
                ),
                
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-6 ',
                  child: MyInput(
                    controller: passwordController,
                    hintText: 'password',
                    isPassword: true,
                  ),
                )
              ]),
              const SizedBox( width: 20),
              BootstrapRow(height: 80, children: [
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-6 ',
                  child: MyInput(
                    controller: emailController,
                    hintText: 'email',
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-6',
                  child: MyInput(
                    controller: enderecoController,
                    hintText: 'endereco',
                  ),
                )
              ]),
               BootstrapRow(children: [
                BootstrapCol(
                   sizes: 'col-12 col-sm-12 col-md-6 ',
                child:
                SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        
                        ),
                        onPressed: () {},
                         label: const Text('Entrar'),
                       icon:  const Icon(
                        Icons.login,
                        )
                       
                       ),
                      ),
                    ), 
                BootstrapCol(
                   sizes: 'col-12 col-sm-12 col-md-6 ',
                child:
                SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton.icon(
          
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                        onPressed: () {},
                        label: const Text('Retroceder'),
                       icon:  const Icon(
                        Icons.arrow_back,
                      
                       ),
                       ),
                      ),
                    ), 
               ]),
               
            ]),
          ),
          )),
      ),);
  }
}
