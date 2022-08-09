import 'package:teste/data/BDpeople.dart';
import 'package:teste/domain/people.dart';
import 'package:flutter/material.dart';
import 'package:teste/widgets/list_folks.dart';

class listPeoplePage extends StatefulWidget {
  const listPeoplePage({Key? key}) : super(key: key);

  @override
  _listPeoplePageState createState() => _listPeoplePageState();
}

class _listPeoplePageState extends State<listPeoplePage> {
  Future<List<People>> list = BD.getPeople();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: buildListView(),
      ),
    );
  }

  buildListView(){
    return FutureBuilder<List<People>>(
      future: list,
      builder: (context, snapshot){
        if(snapshot.hasData){
          List<People> list = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index){
              return ListFolks(people: list[index]);
            },
          );
        }

        return Center(child: const CircularProgressIndicator());
      }
    );
  }
}