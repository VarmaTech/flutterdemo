import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {

  Color _fontcolor;
  Color _fontshadow;
  double _fontSize;
  LogoWidget(Color fontcolor,Color fontshadow,double fontSize){
    _fontcolor=fontcolor;
    _fontshadow=fontshadow;
    _fontSize=fontSize;
  }



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Text('Srinivas Varma.',
      style: TextStyle(
          fontFamily: 'LogoFont',
          fontSize: _fontSize,
          color: _fontcolor,
          shadows: [
            Shadow(
              blurRadius: 1.0,
              color: _fontshadow,
              offset: Offset(1.0, 1.0),
            ),
          ]
      ),
    );
  }
}


class HomeLogoWidget extends StatelessWidget {

  Color _fontcolor;
  Color _fontshadow;
  double _fontSize;
  HomeLogoWidget(Color fontcolor,Color fontshadow,double fontSize){
    _fontcolor=fontcolor;
    _fontshadow=fontshadow;
    _fontSize=fontSize;
  }



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Text('Srinivas Varma',
      textDirection: TextDirection.ltr,

      style: TextStyle(
          fontFamily: 'LogoFont',
          fontSize: _fontSize,
          color: _fontcolor,
          shadows: [
            Shadow(
              blurRadius: 1.0,
              color: _fontshadow,
              offset: Offset(1.0, 1.0),
            ),
          ]
      ),
    );
  }
}