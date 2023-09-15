import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget{

  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context){
    return const Padding(padding: EdgeInsets.all(15),
      child: Center(
        child: SizedBox(
          child: CircularProgressIndicator(
            color: Colors.red,
          ),
        ),
      ));
  }
}