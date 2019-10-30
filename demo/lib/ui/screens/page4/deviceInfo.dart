import 'dart:async';

import 'package:flutter/material.dart';
import 'package:demo/ui/utils/Constants.dart';
import 'package:demo/ui/utils/Navigator.dart';


class DeviceInfo extends StatefulWidget {

  final String title;
  @override
  _DeviceInfoState createState() => new _DeviceInfoState();

  DeviceInfo({Key key,this.title}):super(key:key);
}

class _DeviceInfoState extends State<DeviceInfo>{
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