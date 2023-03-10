import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget{

  final Widget mobileBody;
  final Widget desktopBody;
  LandingPage({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth < 500 ) {return mobileBody;}
        else {return desktopBody;}
      }
      );
  }
}