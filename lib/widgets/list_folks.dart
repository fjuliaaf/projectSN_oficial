import 'package:flutter/material.dart';
import 'package:teste/domain/people.dart';
import 'package:teste/pages/listPeople_page.dart';

class ListFolks extends StatefulWidget {
  final People people;
  const ListFolks({
    Key? key,
    required this.people,
  }) : super(key: key);

  @override
  State<ListFolks> createState() => _ListFolksState();
}

class _ListFolksState extends State<ListFolks> {
  Widget build(BuildContext context){
    return Column(
        children: [
          Text(
            widget.people.name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
            ),
          ),
          const SizedBox(height: 16),
          Text(
            widget.people.email,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'Abel-Regular'
            ),
          ),
          const SizedBox(height: 16),
          Image.network(widget.people.image),
        ],
      );
  }
}
