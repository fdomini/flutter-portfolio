import 'package:flutter/material.dart';
import '/navbar/Navbar.dart';
import '/Landing Page/LandingPage.dart';

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
          children: <Widget>[Navbar(), LandingPage(mobileBody: mobileBody, desktopBody: desktopBody)],
        ),
      ),
    );
  }
}