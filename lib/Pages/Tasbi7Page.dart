
import 'package:flutter/material.dart';
import 'package:tasbi7/data/tabTasbi7.dart';
class Tasbi7Page extends StatefulWidget{
  Tasbi7Page({super.key, this.count,this.CheckTasbi7,this.finalTsbi7,this.resetVariables});
  int ? count;
  int ? CheckTasbi7;
  int ? finalTsbi7;
  final Function? resetVariables;
  @override
  State<Tasbi7Page> createState()=>_Tasbi7Page();
}

class _Tasbi7Page extends State<Tasbi7Page>{
  
  @override
  Widget build(BuildContext context){
    return Padding(padding: const EdgeInsets.symmetric(vertical: 60),
    child: Column(children: [
     widget.finalTsbi7!=0 ? Text(' ${widget.finalTsbi7} : عدد التسبيح',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),) :const Text(""),
      const SizedBox(height: 10,),
      Expanded(child: ListView.builder(
          itemCount: tab.length,
            itemBuilder: (context,index){
                 return Card(
                    margin:const EdgeInsets.all(10),
                    elevation: 25,
                    color:index+1==widget.CheckTasbi7 ?const Color(0xFF9E653B) : Colors.white,
                    child: ListTile(
                            title: Text(
                                    tab[index],
                                    style:
                                    index+1==widget.CheckTasbi7 ? 
                                    const TextStyle(
                                      fontSize: 35,
                                      color: Colors.white
                                    ): const TextStyle( fontSize: 35),textAlign:TextAlign.center
                                   )
                           )
                  );
      } ,  ),
      ),
      const SizedBox(height: 20),
       ElevatedButton.icon(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed:(){  
               if (widget.resetVariables != null) {
                      widget.resetVariables!(); 
             }}, 
            icon:const Icon(Icons.replay_outlined,color: Colors.blue,),
            label:const Text("اعادة",style: TextStyle(color:Colors.blue,fontSize: 20),),
      )
    ],)
    );
  }
}