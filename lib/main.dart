import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/navbar/Navbar.dart';
import '/styles/my_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'John Luigi Fontilla | Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "TitilliumWeb"
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(12, 14, 12, 1)),
        child: Column(
          children: <Widget>[Navbar()],
        ),
      ),
    );
  }
}