import 'package:flutter/material.dart';
import 'package:teste/pages/register_page.dart';
import 'package:teste/pages/enter_page.dart';
import 'package:teste/pages/profile_page.dart';


class ChangeDataPage extends StatefulWidget{
  const ChangeDataPage({Key? key}) : super(key: key);
  
  @override
  State<ChangeDataPage> createState() => _ChangeDataPage();
}

class _ChangeDataPage extends State<ChangeDataPage>{

  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context){
      return SafeArea(
        child: Scaffold (
          appBar: AppBar(
            centerTitle:false,
            backgroundColor: Color.fromARGB(255, 45, 16, 51),
            title: const Text(
              'Science Notes',
              style: TextStyle(fontSize: 24, color:Colors.white, fontFamily:'Staatliches'),

            ),
          ),
          backgroundColor: Color.fromARGB(255, 216, 194, 221),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Text(
                            'Deseja alterar os dados?',
                            style: TextStyle(
                              fontSize: 30,
                              color:Color.fromARGB(255, 45, 16, 51),
                            ),
                          ),
                          SizedBox(height: 32),
                          Text(
                            'Para alterar os dados preencha os campos com os novos dados',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(height: 42),
                          TextFormField(
                            controller: nameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo nome obrigatório';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.person),
                              labelText: 'Nome',
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: userController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo usuário obrigatório';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.person_pin_rounded),
                              labelText: 'User',
                            ),
                          ),
                          SizedBox(height: 32),
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo email obrigatório';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.email_outlined),
                              labelText: 'Email',
                            ),
                          ),
                          SizedBox(height: 40),
                          TextFormField(
                            controller: ageController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo idade obrigatório';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.restore),
                              labelText: 'Idade',
                            ),
                          ),
                          SizedBox(height: 76),
                          ElevatedButton(
                            onPressed: onPressedButton,
                            child: const Text(
                              'Salvar alterações',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontFamily: 'AmatisSC-Regular',
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 45, 16, 51),
                            ),
                          ),
                        ],
                      )
                    )
                  ),
            ),
          ),
        ),
      );
  }

  void onPressedButton() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const ProfilePage();
          },
        ),
      );
    }
  }
}
