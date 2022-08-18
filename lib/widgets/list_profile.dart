import 'package:flutter/material.dart';
import 'package:teste/domain/people.dart';
import 'package:teste/pages/listPeople_page.dart';
import 'package:teste/pages/changeData_page.dart';

class ListProfile extends StatefulWidget {
  final People people;
  const ListProfile({
    Key? key,
    required this.people,
  }) : super(key: key);

  @override
  State<ListProfile> createState() => _ListProfileState();
}

class _ListProfileState extends State<ListProfile> {
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(width: 30),
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Image.network('https://static.thenounproject.com/png/448730-200.png'),
           SizedBox(height: 30),
           Text(
             "Nome: ",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
              ),
            ),
            Text(
              widget.people.name,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Usuário: ",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
              ),
            ),
            Text(
              widget.people.user,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
              ),
            ),
            SizedBox(height: 30),
            Text(
              "E-mail: ",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
              ),
            ),
            Text(
              widget.people.email,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Data de Nascimento: ",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
              ),
            ),
            Text(
              widget.people.birthdate,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: onPressedButton,
                child: const Text(
                  'ALTERAR DADOS CADASTRAIS',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontFamily: 'AmaticSC-Regular',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 45, 16, 51),
                ),
            ),
          ]
        ),
      ]
    );
  }

  void onPressedButton(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const ChangeDataPage();
        },
      ),
    );
  }

}



  