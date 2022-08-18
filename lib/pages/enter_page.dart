import 'package:flutter/material.dart';
import 'package:teste/pages/profile_page.dart';
import 'package:teste/pages/register_page.dart';
import 'package:teste/pages/home_page.dart';
import 'package:teste/pages/listPeople_page.dart';
import 'package:teste/pages/recoverPassword_page.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({Key? key}) : super(key: key);

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color.fromARGB(255, 45, 16, 51),
          title: const Text(
            'Science Notes',
            style: TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'Staatliches'),
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
                    Image.network("https://i.postimg.cc/4xDn3Cr9/5-FB3708-B-BF96-4-A35-A4-BC-AC0-A1317-D36-F.png"),
                    TextFormField(
                      controller: userController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo usuário obrigatório';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.account_box),
                        labelText: 'Usuário',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: 'Senha',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo senha obrigatório';
                        } 
                        return null;
                      },
                    ),
                    const SizedBox(height: 36),
                    TextButton(
                      onPressed:(){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) {
                              return const ProfilePage();
                            },
                          ),
                        );
                      },
                      child: Text("clique",
                        style: TextStyle(
                          color: Color.fromARGB(197, 33, 22, 192),
                        ),
                      ),
                    ),
                    const SizedBox(height: 36),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: onPressedButton,
                          child: const Text(
                            'Logar',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontFamily: 'AmaticSC-Regular',
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 45, 16, 51),
                            minimumSize: (Size(120, 40)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed:(){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) {
                                  return const RecoverPasswordPage();
                                },
                              ),
                            );
                          },
                          child: Text("Esqueci a minha senha",
                            style: TextStyle(
                              color: Color.fromARGB(186, 0, 0, 0),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ]
                    ),
                    const SizedBox(height: 26),
                    TextButton(
                      onPressed:(){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) {
                              return const RegisterPage();
                            },
                          ),
                        );
                      },
                      child: Text("Não tem uma conta? Cadastre-se.",
                        style: TextStyle(
                          color: Color.fromARGB(186, 0, 0, 0),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ),
          ),
        ),
      ),  
    );
  }

  void onPressedButton() {

    if (_formKey.currentState!.validate()) {
      String userLogin = "jfo";
      String passwordLogin = "12345";

      String user = userController.text;
      String pwd = passwordController.text;

      if (userLogin == user && passwordLogin == pwd) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
             },
          ),
          (Route<dynamic> route) => false,
        );
      } 
    } 
  }
}