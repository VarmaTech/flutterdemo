import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo/ui/screens/page1/DataObj.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo/ui/utils/Constants.dart';
import 'package:demo/ui/utils/Navigator.dart';
import 'package:flutter/widgets.dart';

class ItemView extends StatefulWidget {
  final Data data;

  @override
  _ItemViewState createState() => new _ItemViewState();

  ItemView({Key key, @required this.data}) : super(key: key);
}

class _ItemViewState extends State<ItemView>{
//  final Data data;
//  ItemView({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final levelIndicator = Container(
        child: Container(
          color: Colors.blue,
        )
    );


    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        SizedBox(height: 120.0),

        SizedBox(height: 10.0),
        Text(
          widget.data.first_name, style: TextStyle(
            fontFamily: 'Regular', fontSize: 58, color: Colors.white),
        ),
        SizedBox(height: 30.0),

      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
//            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            child: CachedNetworkImage(
              imageUrl: widget.data.avatar,
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
            ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: /*Color.fromRGBO(58, 66, 86, .9)*/transparent),
          child: ListTile(
             title: Text('${widget.data.first_name}  ${widget.data.last_name}', style: TextStyle(
                fontFamily: 'Regular', fontSize: 18, color: Colors.white)),
            subtitle: Text(widget.data.email, style: TextStyle(
                fontFamily: 'Regular', fontSize: 12, color: Colors.white12)),

          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    final userId = Text(
      '${widget.data.id}',
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
      style: TextStyle(
          height: 5,
        fontFamily: 'Regular', fontSize: 18, color: Colors.black),
    );
    final username = Text(
      '${widget.data.first_name} ${widget.data.last_name}' ,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,

      style: TextStyle(
        height: 5,
        fontFamily: 'Regular', fontSize: 18, color: Colors.black),
    );
    final userEmail = Text(
      widget.data.email,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
      style: TextStyle(
          height: 5,
        fontFamily: 'Regular', fontSize: 18, color: Colors.black),
    );

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[userId,username,userEmail],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}

