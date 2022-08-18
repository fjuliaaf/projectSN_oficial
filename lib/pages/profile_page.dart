import 'package:flutter/material.dart';
import 'package:teste/pages/enter_page.dart';
import 'package:teste/pages/home_page.dart';
import 'package:teste/pages/changeData_page.dart';
import 'package:teste/data/BDpeople.dart';
import 'package:teste/domain/people.dart';
import 'package:teste/widgets/list_profile.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({Key? key}) : super(key: key);
  
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage>{
  Future<List<People>> list = BD.getPeople();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 45, 16, 51),
        title: const Text(
          'Science Notes',
          style: TextStyle(fontSize: 24, color:Colors.white, fontFamily: 'Staaatliches'),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 216, 194, 221),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: buildListView(),
        ),
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
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index){
              return ListProfile(people: list[index]);
            },
          );
        }
        return Center(child: const CircularProgressIndicator());
      }
    );
  }
}