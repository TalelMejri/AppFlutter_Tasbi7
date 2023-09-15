import 'package:flutter/material.dart';
import 'widget/loading.dart'; 
import 'Pages/testPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(title: "AppPage"),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title});

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
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        main = const LoadingWidget(); 
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D7BC),
      body: main,
    );
  }
}
