import 'dart:async';
import 'dart:convert';
import 'package:demo/ui/screens/page1/DataObj.dart';
import 'package:demo/ui/screens/page1/ViewItem.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:demo/ui/utils/Constants.dart';
import 'package:demo/ui/utils/Navigator.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RestApi extends StatefulWidget {
  final String title;

  @override
  _RestApiState createState() => new _RestApiState();

  RestApi({Key key, this.title}) : super(key: key);
}

class _RestApiState extends State<RestApi> {
  DataObj apiObj;

  Future<DataObj> _getUsers() async {
    var data = await http.get("https://reqres.in/api/users?page=2");
    var jsondata = json.decode(data.body);
    List<DataObj> datas = [];
    var u = jsondata;
      List<Data> records =[];
      for(var v in u["data"]){
        Data data = Data(v["id"],v["email"],v["first_name"],v["last_name"],v["avatar"]);
        print('Debug : ${data.email} --- ${data.id}');

        records.add(data);
      }

      apiObj = DataObj(u["page"],u["per_page"],u["total"],u["total_pages"],records);

      print('Debug : ${apiObj.page} --- ${apiObj.data.length}');



    return apiObj;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: appColor_dark,
        title: new Text(widget.title,
            style: TextStyle(
                fontFamily: 'Regular', fontSize: 18, color: Colors.white)),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context,AsyncSnapshot snapshot){
            print('Debug SnapShot : ${snapshot.data}');
            if(snapshot.data == null){
              return Center(
                child: new Text("LOADING....",
                    style: TextStyle(
                        fontFamily: 'Regular', fontSize: 18, color: Colors.black)),
              );
            }else {
              return  ListView.separated(
                itemCount: apiObj.data.length,
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: apiObj.data[index].avatar,
                        width: 50,
                          height: 50,
                        placeholder: (context, url) => new CircularProgressIndicator(),
                        errorWidget: (context, url, error) => new Icon(Icons.error),
                      ),
                     // backgroundImage: NetworkImage(apiObj.data[index].avatar),
                    ),
                    title: Text('${apiObj.data[index].first_name}  ${apiObj.data[index].last_name}', style: TextStyle(
                        fontFamily: 'Regular', fontSize: 18, color: Colors.black)),
                    subtitle: Text(apiObj.data[index].email, style: TextStyle(
                        fontFamily: 'Regular', fontSize: 12, color: Colors.grey)),
                    onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemView(data: apiObj.data[index]),
                      ),
                    );
                  },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
