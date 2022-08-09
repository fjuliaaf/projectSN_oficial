import 'package:teste/domain/people.dart';

class BD {
  static List<People> list = [
    People(
      image:
      'https://static.thenounproject.com/png/448730-200.png',
      name: 'Julia Ferreira',
      email: 'jfo3@aluno.ifal.edu.br',
      senha: '12345',
    ),
    People(
      image:
      'https://static.thenounproject.com/png/448730-200.png',
      name: 'William Levy',
      email: 'williamlevy@hotmail.com',
      senha: '54321',
    ),
    People(
      image:
      'https://static.thenounproject.com/png/448730-200.png',
      name: 'Ian Somerhalder',
      email: 'myLove@hotmail.com',
      senha: 'ian1234',
    ),
  ];

  static Future<List<People>> getPeople() async {
    await Future.delayed(const Duration(seconds: 10));
    return list;
  }

}