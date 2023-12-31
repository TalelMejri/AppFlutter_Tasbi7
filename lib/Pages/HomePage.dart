import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'MoreDetails.dart';
import 'Tasbi7Page.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState()=>_MyHomePage();
}

class _MyHomePage extends State<MyHomePage>{

  
  bool playConfetti=false;
  int count=0;
  int CheckTasbi7=1;
  int finalFirstTasbi7=0;
  void increment(){
    setState(() {
      count++;
      if(count>=33){
        CheckTasbi7++;
        count=0;
      }
      if(CheckTasbi7==5){
        count=0;
        finalFirstTasbi7++;
        CheckTasbi7=1;
        playConfetti=true;
        Future.delayed(const Duration(seconds: 3),(){
          playConfetti=false;
        });
      }
    });
  }

void resetVariables() {
  setState(() {
    count = 0;
    CheckTasbi7 = 1;
    finalFirstTasbi7 = 0;
  });
}

  int _selectIndex=1;
  void changeSelectedINdex(int index){
    setState(() {
      _selectIndex=index;
    });
  }

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          backgroundColor: const Color(0xFFE5D7BC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE5D7BC),
        leading: Padding(
             padding:  const EdgeInsets.only(left: 3),
             child:Image.asset("images/tasbi7.png"),
          ),
        actions:[
             Padding(
             padding:  EdgeInsets.all(15),
            //   PopupMenuButton<String>(
            //   key: const Key('popup_menu'),
            //   onSelected: (action) {
            //      print("test");
            //   },
            //   itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            //     const PopupMenuItem(
            //       key: Key('delete_all'),
            //       child: Text('Delete all'),
            //     ),
            //   ],
            // ),
             child:   Icon(Icons.info,color: Color(0xFF9E653B)),
          )
        ],
        bottom: TabBar(
          isScrollable: false,
          indicatorColor: Color(0xFF9E653B),
          tabs: [
            
            Text("التسبيح أفضل الكلام وأحبُّه إلى الله",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
          ]
        ),
      ),
      floatingActionButton: Visibility(
        visible: _selectIndex==1 ? true : false,
        child: FloatingActionButton(
        backgroundColor:const Color(0xFF9E653B),
        onPressed: (){increment();},child:  Text("${count}"),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CurvedNavigationBar(
         color:const Color(0xFF9E653B),
          buttonBackgroundColor:const Color(0xFF9E653B),
          backgroundColor:const Color(0xFFE5D7BC),
          animationCurve: Curves.easeInOut,
          animationDuration:const  Duration(milliseconds: 600),
        onTap: (index){changeSelectedINdex(index);},
        index: _selectIndex,
         items:<Widget> [
             Icon(Icons.read_more,color: Colors.white,),
             Icon(Icons.mosque,color: Colors.white,),
      ]),
      
      body: _selectIndex==1 ?  Tasbi7Page(count: count,CheckTasbi7: CheckTasbi7,finalTsbi7:finalFirstTasbi7,resetVariables: resetVariables,playConfetti:playConfetti) : const MoreDetails(),
    ),
    );
  }
}