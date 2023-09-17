
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tasbi7/data/tabTasbi7.dart';
class MoreDetails extends StatefulWidget{
  const MoreDetails({super.key});

  @override
  State<MoreDetails> createState()=>_MoreDetails();
}

class _MoreDetails extends State<MoreDetails>{

  @override
  Widget build(BuildContext context){
    return Center(
      child: ListView.builder(itemCount: Adhkar.length,itemBuilder: (content,index){
        final item=Adhkar[index];
        String number=(Random.secure().nextInt(9999)).toString();
        return Dismissible(
             key:Key(number),
             background: Container(
              color: const Color(0xFF9E653B),
              child: const Icon(Icons.delete,color: Colors.white,),
             ),
             onDismissed: (direction){
              setState(() {
                Adhkar.remove(item);
              });
             },
             child:Card(
              elevation: 45,
              child: ListTile(
                title: Text(item),
              ),
             ));
      }),
    );
  }
}