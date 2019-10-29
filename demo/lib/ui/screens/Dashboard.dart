import 'dart:async';

import 'package:flutter/material.dart';
import 'package:demo/ui/utils/Constants.dart';
import 'package:demo/ui/utils/Navigator.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => new _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    // backing data
    final pages = [
      'fetching Rest Api'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroung_light_white,
        appBar: AppBar(
          backgroundColor: appColor_dark,
          centerTitle: true,
          title: Text(

            'Dashboard',
            style: TextStyle(
                fontFamily: 'Regular', fontSize: 18, color: Colors.white),
          ),
          elevation: 0.0,
          leading: IconButton(
            tooltip: 'Previous choice',
            icon: Icon(Icons.close, color: Colors.black),

          ),
        ),
        body: Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: (){
                    if(index==0){
                      navigatetoRestApiScreen(pages[index],context);
                    }
                  },
                  title: Text(pages[index],

                    style: TextStyle(
                        fontFamily: 'Regular',
                        fontSize: 18,
                        color: Colors.black)


                    ),
                );
              },
            )),
      )
    );
    /*return Material(
        child: Container(
      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.blueAccent,
            child: Center(
                child: Text(

              'Dashboard',
              style: TextStyle(
                  fontFamily: 'Regular', fontSize: 18, color: Colors.white),
            )),
          ),
          Expanded(
              child: ListView.builder(
            shrinkWrap: true,
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(pages[index],
                  style: TextStyle(
                      fontFamily: 'Regular', fontSize: 18, color: Colors.black),),
              );
            },
          ))
        ],
      ),
    ));*/
  }
}
