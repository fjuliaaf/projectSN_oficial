import 'package:flutter/material.dart';
import 'package:teste/domain/conteudo.dart';
import 'package:teste/pages/enter_page.dart';
import 'package:teste/pages/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(
              children: [
                SizedBox(height: 40),
                Text(
                  "Criar conta",
                  style: TextStyle(
                    fontSize: 36,
                    color: Color.fromARGB(255, 45, 16, 51),
                    fontFamily: 'Staatliches',
                  ),
                ),
                SizedBox(height: 36),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person_pin_rounded),
                    labelText: 'User',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Nome completo',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Data de nascimento',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email_outlined),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                ),
                const SizedBox(height: 72),
                ElevatedButton(
                  onPressed: onPressedButton, 
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontFamily: 'AmaticSC-Regular',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 45, 16, 51),
                    minimumSize: (Size(170, 40)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void onPressedButton() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const EnterPage();
        },
      ),
    );
  }
}