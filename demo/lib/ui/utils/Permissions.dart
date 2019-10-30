import 'package:flutter/material.dart';
import 'package:permission/permission.dart';
import 'package:demo/ui/utils/ShowLog.dart';

class AskForPermission {

//  var permissions = await Permission.getPermissionsStatus([PermissionName.Calendar, PermissionName.Camera]);
//
//  var permissionNames = await Permission.requestPermissions([PermissionName.Calendar, PermissionName.Camera]);
//
//  Permission.openSettings;


  Future askIt(BuildContext context,List<PermissionName> permissions,bool forcePermission) async {

    List<Permissions> checkPermissions = await Permission.getPermissionsStatus(permissions);
    bool isRequired= checkPermission(permissions,checkPermissions) as bool;
    if(isRequired){
      askPermission(permissions,forcePermission);
    }


  }

  bool checkPermission(List<PermissionName> permissions, List<Permissions> checkPermissions)  {
    bool isAnypermission=false;
    for (var permission in permissions) {
      for (var checkpermission in checkPermissions) {
        ShowLog().debug(
            'for ${permission} status is ${checkpermission.permissionStatus}');
        if (permission == checkpermission.permissionName) {
          if (PermissionStatus.deny == checkpermission.permissionStatus) {
            Permission.openSettings();
            isAnypermission= true;
            break;
          } else
          if (PermissionStatus.allow != checkpermission.permissionStatus) {
            isAnypermission= true;
            break;
          } else {
            isAnypermission= false;
          }
        }
      }
      if(isAnypermission)
        break;
    }
    return isAnypermission;
  }

  void askPermission(List<PermissionName> permissions, bool forcePermission) async{
    List<Permissions> checkPermissions = await Permission.requestPermissions(permissions);
    for (var permission in permissions) {
      for (var checkpermission in checkPermissions) {
        ShowLog().debug(
            'for ${permission} status is ${checkpermission.permissionStatus}');
        if (permission == checkpermission.permissionName) {
          if (PermissionStatus.deny == checkpermission.permissionStatus) {
            Permission.openSettings();
          } else
          if (PermissionStatus.allow != checkpermission.permissionStatus) {
            if(forcePermission)
              askPermission(permissions,forcePermission);
          } else {
          }
        }
      }
    }
  }
}
