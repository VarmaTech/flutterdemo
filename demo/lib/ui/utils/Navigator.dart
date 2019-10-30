
import 'package:demo/ui/screens/page2/deviceInfo.dart';
import 'package:flutter/material.dart';
//import 'package:writodo/ui/screens/home/CreateTodo.dart';
import 'package:demo/ui/screens/page1/restapi.dart';
import 'package:demo/ui/screens/Dashboard.dart';
//import 'package:writodo/ui/screens/home/views/DialogProfileCreate.dart';
//import 'package:writodo/ui/screens/intro_login/loginscreen.dart';
//
//Future navigatetoLoginscreen(context) async {
//  Navigator.pushAndRemoveUntil(
//      context,
//      MaterialPageRoute(
//          builder: (context) => LoginScreen()
//      ),

//      ModalRoute.withName("/LoginScreen")
//  );
//}
//Future navigatetowalkthrough(context) async {
//  Navigator.pushAndRemoveUntil(
//      context,
//      MaterialPageRoute(
//          builder: (context) => HomeScreen()
//      ),
//      ModalRoute.withName("/WalkScreen")
//  );
//}
Future navigatetoHome(context) async {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
          builder: (context) => DashboardScreen()
      ),
      ModalRoute.withName("/DashboardScreen")
  );
}
Future navigatetoRestApiScreen(String mtitle,context) async {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => RestApi(title: mtitle,)
    ),
  );
}
Future navigatetoDevcieInfoScreen(String mtitle,context) async {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => DeviceInfo(title: mtitle,)
    ),
  );
}
//
///*Future navigatetoCreate(context) async {
//  Navigator.push(
//    context,
//    MaterialPageRoute(
//        builder: (context) => CreateNewTodo(null)
//    ),
//  );
//}*/
//
//Future navigatetoCreateProfile(context) async {
//  Navigator.push(
//    context,
//    MaterialPageRoute(
//        builder: (context) => DialogProfileCreate()
//    ),
//  );
//}
//
//Future closeCurrentPage(context) async {
//  Navigator.pop(context);
//}
//
//Route showPopup_newTodo() {
//  return PageRouteBuilder(
//    pageBuilder: (context, animation, secondaryAnimation) =>
//        CreateNewTodo(null),
//    transitionsBuilder: (context, animation, secondaryAnimation, child) {
//      var begin = Offset(0.0, 1.0);
//      var end = Offset.zero;
//      var curve = Curves.ease;
//
//      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//
//      return SlideTransition(
//        position: animation.drive(tween),
//        child: child,
//      );
//    },
//  );
//}
