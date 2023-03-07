
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/styles/my_icons.dart';


class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (context, constraints){
      if (constraints.maxWidth > 1200){
        return DesktopNavbar();
      }

      else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200){
        return DesktopNavbar();
      }

      else {
        return MobileNavbar();
      }
    }
    );
  }
}

class DesktopNavbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        SvgPicture.asset(iconLogo, height: 50, color: Colors.white),

        Row(
        children: <Widget>[
          Text("About", style: TextStyle(color: Colors.white)),
          SizedBox(width: 50),
          Text("Portfolio", style: TextStyle(color: Colors.white)),
          SizedBox(width: 50),
          Text("Contact", style: TextStyle(color: Colors.white)),
      ]),

      MaterialButton(
        color: Color.fromRGBO(216, 50, 60, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3))),
        padding: EdgeInsets.all(20),
        onPressed: () {

        },
        child: Text(
          "Download CV", style: TextStyle(color: Colors.white),
        ),
      )
      ])
    );
  }
}

class MobileNavbar extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Padding(padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SvgPicture.asset(iconNav, height: 40, color: Colors.white),
        Spacer(),
        Row(
          children: <Widget>[
          SvgPicture.asset(iconLogo, height: 50, color: Colors.white),]),
        Spacer(),
        Row(
          children: <Widget>[
          SvgPicture.asset(iconCV, height: 33, color: Colors.white),])

      ],
    )
    );
  }
}