

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<StatefulWidget> createState() =>_LoadingState();
}

class _LoadingState extends State<Loading>  {
  
  @override
  Widget build(BuildContext context) {
    return
     const Scaffold(
      backgroundColor:  Color(0xFFE5D7BC),
      body:   Center(
        child: Image(
          image: AssetImage("images/tasbi7.png"),
          width: 200,
          height: 200,
        ),
      ),
     );
  }
}