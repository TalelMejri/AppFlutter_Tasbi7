import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState()=>_MyHomePage();
}

class _MyHomePage extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 1,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE5D7BC),
        leading: Image.asset("images/tasbi7.png"),
        actions:<Widget> [
            const Padding(
             padding:  EdgeInsets.all(15),
             child:   Icon(Icons.info),
          )
        ],
        bottom:const TabBar(
          isScrollable: false,
          tabs: [
            Text("التسبيح أفضل الكلام وأحبُّه إلى الله",style: TextStyle(color: Colors.black,fontSize: 20)),
          ]
          
        ),
      ),
      body:  Center(child: Text("d"),)
       
    ),
    );
  }
}