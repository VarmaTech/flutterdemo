import 'dart:async';
import 'dart:io' show Platform;
import 'package:demo/ui/screens/page1/DataObj.dart';
import 'package:demo/ui/utils/Permissions.dart';
import 'package:demo/ui/utils/ShowLog.dart';
import 'package:flutter/material.dart';
import 'package:demo/ui/utils/Constants.dart';
import 'package:demo/ui/utils/Navigator.dart';
import 'package:device_id/device_id.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;
import 'package:get_ip/get_ip.dart';
import 'package:permission/permission.dart';
class DeviceInfo extends StatefulWidget {

  final String title;
  @override
  _DeviceInfoState createState() => new _DeviceInfoState();

  DeviceInfo({Key key,this.title}):super(key:key);
}

class _DeviceInfoState extends State<DeviceInfo>{
  List<ListInfo> infos = [];


  Future<List<ListInfo>> _getUsers() async {
    infos.clear();
    AskForPermission().askIt(context, [PermissionName.Phone, PermissionName.Contacts,PermissionName.Internet,PermissionName.Storage],false);

    String device_id = await DeviceId.getID;
    String device_IMEI = await DeviceId.getIMEI;
    String device_MEID = await DeviceId.getMEID;
    String ipAddress = await GetIp.ipAddress;
    infos.add(ListInfo(device_id,"Device ID"));
    infos.add(ListInfo(device_IMEI,"Device IMEI"));
    infos.add(ListInfo(device_MEID,"Device MEID"));
    infos.add(ListInfo(Platform.operatingSystem,"OS version"));
    infos.add(ListInfo(ipAddress,"Ip address"));


   return infos;
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: appColor_dark,

        title: new Text(widget.title,style: TextStyle(
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
                itemCount: infos.length,
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(infos[index].title, style: TextStyle(
                        fontFamily: 'Regular', fontSize: 18, color: Colors.black)),
                    subtitle: Text(infos[index].subtile, style: TextStyle(
                        fontFamily: 'Regular', fontSize: 12, color: Colors.grey)),

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