import 'package:flutter/material.dart';
import 'widget/loading.dart'; 
import 'Pages/HomePage.dart';

void main() {
  runApp(const HomePage(title: "Tasbi7",));
}


class HomePage extends StatefulWidget {
  const HomePage({ super.key,required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  late Widget main;

  @override
  void initState() {
    super.initState();
    main = const Loading();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        main = const MyHomePage(); 
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      home: main,
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
       ),
    );
  }
}
