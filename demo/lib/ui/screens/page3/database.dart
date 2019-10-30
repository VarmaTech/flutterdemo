import 'dart:async';

import 'package:flutter/material.dart';
import 'package:demo/ui/utils/Constants.dart';
import 'package:demo/ui/utils/Navigator.dart';


class DatabaseLogic extends StatefulWidget {

  final String title;
  @override
  _DatabaseLogicState createState() => new _DatabaseLogicState();

  DatabaseLogic({Key key,this.title}):super(key:key);
}

class _DatabaseLogicState extends State<DatabaseLogic>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: appColor_dark,

        title: new Text(widget.title,style: TextStyle(
            fontFamily: 'Regular', fontSize: 18, color: Colors.white)),
      ),
      body: Container(),
    );
  }
}