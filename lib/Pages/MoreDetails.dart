
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tasbi7/data/tabTasbi7.dart';
import 'package:tasbi7/data/note.dart';
class MoreDetails extends StatefulWidget{
  const MoreDetails({super.key});

  @override
  State<MoreDetails> createState()=>_MoreDetails();
}

class _MoreDetails extends State<MoreDetails>{

List<Note> groupeNote=[
  Note(desc: "sayAllah"),
  Note(desc: "sayAllah"),
  Note(desc: "sayAllah"),
  Note(desc: "sayAllah"),
  Note(desc: "sayAllah"),
  Note(desc: "sayAllah"),
];

  @override
  Widget build(BuildContext context){
    groupeNote.sort((a, b) => a.status == b.status ? 0 : a.status ? 1 : -1);
    return Center(
      child: ListView.builder(itemCount: groupeNote.length,itemBuilder: (content,index){
        final item=groupeNote[index];
        String number=(Random.secure().nextInt(9999)).toString();
        return Dismissible(
             key:Key(number),
             background: Container(
              color: const Color(0xFF9E653B),
              child: const Icon(Icons.delete,color: Colors.white,),
             ),
             onDismissed: (direction){
              setState(() {
                item.status=true;
              });
             },
             child:Card(
              elevation: 45,
              child: ListTile(
                title: Text(item.notedesc),
                subtitle: Text(item.status==true ? 'Seen' : 'Not Yet'),
              ),
             ));
      }),
    );
  }
}