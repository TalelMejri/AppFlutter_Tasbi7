import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tasbi7/data/tabTasbi7.dart';
import 'package:tasbi7/data/note.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({super.key});

  @override
  State<MoreDetails> createState() => _MoreDetails();
}

class _MoreDetails extends State<MoreDetails> {
  List<Note> groupeNote = [
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "sayAllah"),
    Note(desc: "testtestststst"),
  ];

  int getLongStatus(){
    int count=0;
    for(int i=0;i<groupeNote.length;i++){
      if(groupeNote[i].status==true){
        count++;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    groupeNote.sort((a, b) => a.status == b.status ? 0 : a.status ? 1 : -1);
    return Center(
      child: Column(
        children: <Widget>[
           Padding(
            padding: const EdgeInsets.all(15),
            child: Text(" عدد الأذكار المقروءة  ${getLongStatus()} ( ${groupeNote.length})",style:const TextStyle(color: Colors.black,fontSize: 18), ),
          ),
          Visibility(visible: groupeNote.length!=getLongStatus(),child:ElevatedButton(onPressed: (){
          }, child:const  Icon(Icons.replay_outlined)),),
          const SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
                itemCount: groupeNote.length,
                itemBuilder: (context, index) {
                  final item = groupeNote[index];
                  String number = (Random.secure().nextInt(9999)).toString();
                  return Dismissible(
                    key: Key(number),
                    background: Container(
                      color: const Color(0xFF9E653B),
                      child: const Icon(Icons.visibility_off, color: Colors.white),
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        item.status = true;
                      });
                    },
                    child: Card(
                      elevation: 45,
                      child: ListTile(
                        title: Text(item.desc),
                        trailing: item.status
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
