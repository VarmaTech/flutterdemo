import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:demo/ui/utils/Constants.dart';
import 'package:demo/ui/utils/LogoWidget.dart';
import 'package:demo/ui/utils/Navigator.dart';
//import 'package:writodo/ui/Utils/SharedPref.dart';
//import 'package:writodo/ui/Utils/ShowLog.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isRegistered =false;
  startTime() async {
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }

  Future navigationPage() async {
      navigatetoHome(context);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: appColor_dark
    ));

    return Scaffold(
        body: new Container(
          // Add box decoration
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.3, 0.6, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                appColor_dark,
                appColor_medium,
                appColor_medium,
                appColor_low
              ],
            ),
          ),
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 10,
                    child: new Align(
                      alignment: AlignmentDirectional.center,
                      child: LogoWidget(Colors.white,Colors.black,40.0),
                    )
                ),
                Expanded(
                  flex: 1,
                  child: new Align(
                    alignment: AlignmentDirectional.center,
                    child: Text('Copyright \u00a9 2017, innoxsofty.com.',
                      style: TextStyle(
                          fontFamily: 'Light',
                          fontSize: 10.0,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 1.0,
                              color: Colors.black26,
                              offset: Offset(1.0, 1.0),
                            ),
                          ]
                      ),
                    ),
                  ),
                )
              ]
          ),
        )
    );
  }
}
