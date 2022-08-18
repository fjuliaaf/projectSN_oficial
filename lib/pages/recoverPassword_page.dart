import 'package:flutter/material.dart';
import 'package:teste/pages/register_page.dart';
import 'package:teste/pages/enter_page.dart';

class RecoverPasswordPage extends StatefulWidget {
  const RecoverPasswordPage({Key? key}) : super(key: key);

  @override
  State<RecoverPasswordPage> createState() => _RecoverPasswordPageState();
}

class _RecoverPasswordPageState extends State<RecoverPasswordPage> {
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
                Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 45, 16, 51),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  'Para recuperar seu acesso, preencha\n' 'o campo com o e-mail cadastrado\n' 'em sua conta e a sua nova senha.',
                  style: TextStyle(color: Colors.black54,
                  fontSize: 20),
                ),
                SizedBox(height: 42),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 76),
                ElevatedButton(
                  onPressed: onPressedButton, 
                  child: const Text(
                    'Recuperar acesso',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontFamily: 'AmaticSC-Regular',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 45, 16, 51),
                    minimumSize: (Size(200, 40)),
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