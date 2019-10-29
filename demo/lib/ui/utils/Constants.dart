import 'dart:ui';

import 'package:flutter/material.dart';

String HOME_SCREEN="/HomeScreen";
String LOGIN_SCREEN="/LoginScreen";
class Constants {
static const String name = "Flutkart";
static const String store = "Online Store\n For Everyone";
static const String wt1 = "WELCOME";
static const String wc1 =
    "Flutkart is Premium Online Shopping\n Platform for Everyone";
static const String wt2 = "DISCOVER PRODUCT \n1234567890";
static const String wc2 =
    "Search Latest and Featured Product\n With Best Price";
static const String wt3 = "ADD TO CART";
static const String wc3 =
    "Add to Cart All Product You need\n And Checkout the Order";
static const String wt4 = "VERIFY AND RECEIVE";
static const String wc4 =
    "We Will Verify Your Order\n Pay the bill and Receive the Product";
static const String skip = "SKIP";
static const String next = "NEXT";
static const String gotIt = "GOT IT";
static const String AddNewProfile = "Add New";
static const int CT_PLACE = 1;
static const int CT_TIME = 2;
static const int CT_NOTES = 3;
static const int CT_PRIORITY = 4;
static const int CT_CALENDAR = 5;
static const int CT_ALARM = 6;
static const int CT_TYPE = 8;
static const int CT_PROFILE = 7;


}

String capitalizeFirstLetter(String s) => s[0].toUpperCase() + s.substring(1);

Color appColor_dark = Colors.blueAccent;//Color(0xFF67B9CE);
Color appColor_medium = Colors.blueAccent[200];//Color(0xFF55CEC7);
Color appColor_low = Colors.blueAccent[100];//Color(0xFF3BE8BB);
Color transparent = Colors.transparent;//Color(0xFF3BE8BB);
Color backgroung_light_white = Color(0xFFF3F4F8);
Color color_time = Color(0xFF5DA4E2);


List getAppColors(){
  List<String> AppColorsSelect = new List();
  AppColorsSelect.add("Cherry");
  AppColorsSelect.add("Pinky");
  AppColorsSelect.add("Lush");
  AppColorsSelect.add("Kashmir");
  AppColorsSelect.add("Tranquil");
  AppColorsSelect.add("Pale_Wood");
  AppColorsSelect.add("Green_Beach");
  AppColorsSelect.add("Sha_La_La");
  AppColorsSelect.add("Frost");
  AppColorsSelect.add("Almost");
  AppColorsSelect.add("Virgin_America");
  AppColorsSelect.add("Endless_River");
  AppColorsSelect.add("Purple_White");
  AppColorsSelect.add("Bloody-Mary");
  AppColorsSelect.add("Love_Tonight");
  AppColorsSelect.add("Bourbon");
  AppColorsSelect.add("Dusk");
  AppColorsSelect.add("Relay");
  AppColorsSelect.add("Decent");
  AppColorsSelect.add("Sweet_Morning");
  AppColorsSelect.add("Scooter");
  AppColorsSelect.add("Celestial");
  AppColorsSelect.add("Royal");
  AppColorsSelect.add("Sunset_Gradient");
  AppColorsSelect.add("Peach");
  AppColorsSelect.add("Sea_Blue");
  AppColorsSelect.add("Orange_Coral");
  AppColorsSelect.add("Aubergine");
  AppColorsSelect.add("Roseanna");
  AppColorsSelect.add("Sexy_Blue");
  AppColorsSelect.add("Purple_Love");
  AppColorsSelect.add("Piglet");
  AppColorsSelect.add("Mauve");
  AppColorsSelect.add("Shades_of_Grey");
  AppColorsSelect.add("A_Lost_Memory");
  AppColorsSelect.add("Socialive");

  return AppColorsSelect;
}

List getGradientColor(String colorId){
  switch(colorId) {
    case "cherry":
      return Cherry;
    case "pinky":
      return Pinky;
    case "lush":
      return Lush;
    case "kashmir":
      return Kashmir;
    case "tranquil":
      return Tranquil;
    case "pale_wood":
      return Pale_Wood;
    case "green_beach":
      return Green_Beach;
    case "sha_la_la":
      return Sha_La_La;
    case "frost":
      return Frost;
    case "almost":
      return Almost;
    case "virgin_america":
      return Virgin_America;
    case "endless_river":
      return Endless_River;
    case "purple_white":
      return Purple_White;
    case "bloody-mary":
      return Bloody_Mary;
    case "love_tonight":
      return Love_Tonight;
    case "bourbon":
      return Bourbon;
    case "dusk":
      return Dusk;
    case "relay":
      return Relay;
    case "decent":
      return Decent;
    case "sweet_morning":
      return Sweet_Morning;
    case "scooter":
      return Scooter;
    case "celestial":
      return Celestial;
    case "royal":
      return Royal;
    case "sunset_gradient":
      return Sunset_Gradient;
    case "peach":
      return Peach;
    case "sea_blue":
      return Sea_Blue;
    case "orange_coral":
      return Orange_Coral;
    case "aubergine":
      return Aubergine;
    case "roseanna":
      return Roseanna;
    case "sexy_blue":
      return Sexy_Blue;
    case "purple_love":
      return Purple_Love;
    case "piglet":
      return Piglet;
    case "mauve":
      return Mauve;
    case "shades_of_grey":
      return Shades_of_Grey;
    case "a_lost_memory":
      return A_Lost_Memory;
    case "socialive":
      return Socialive;

  }
}

List<Color> Roseanna        = [getColor("ffafbd"),getColor("ffc3a0")];
List<Color> Sexy_Blue       = [getColor("2193b0"),getColor("6dd5ed")];
List<Color> Purple_Love     = [getColor("cc2b5e"),getColor("753a88")];
List<Color> Piglet          = [getColor("ee9ca7"),getColor("ffdde1")];
List<Color> Mauve           = [getColor("42275a"),getColor("734b6d")];
List<Color> Shades_of_Grey  = [getColor("bdc3c7"),getColor("2c3e50")];
List<Color> A_Lost_Memory   = [getColor("de6262"),getColor("ffb88c")];
List<Color> Socialive       = [getColor("06beb6"),getColor("48b1bf")];
List<Color> Cherry          =[getColor("eb3349"),getColor("f45c43")];
List<Color> Pinky           =[getColor("dd5e89"),getColor("f7bb97")];
List<Color> Lush            =[getColor("56ab2f"),getColor("a8e063")];
List<Color> Kashmir         =[getColor("614385"),getColor("516395")];
List<Color> Tranquil        =[getColor("eecda3"),getColor("ef629f")];
List<Color> Pale_Wood       =[getColor("eacda3"),getColor("d6ae7b")];
List<Color> Green_Beach     =[getColor("02aab0"),getColor("00cdac")];
List<Color> Sha_La_La       =[getColor("d66d75"),getColor("e29587")];
List<Color> Frost           =[getColor("000428"),getColor("004e92")];
List<Color> Almost          =[getColor("ddd6f3"),getColor("faaca8")];
List<Color> Virgin_America  =[getColor("7b4397"),getColor("dc2430")];
List<Color> Endless_River   =[getColor("43cea2"),getColor("185a9d")];
List<Color> Purple_White    =[getColor("ba5370"),getColor("f4e2d8")];
List<Color> Bloody_Mary     =[getColor("ff512f"),getColor("dd2476")];
List<Color> Love_Tonight    =[getColor("4568dc"),getColor("b06ab3")];
List<Color> Bourbon         =[getColor("ec6f66"),getColor("f3a183")];
List<Color> Dusk            =[getColor("ffd89b"),getColor("19547b")];
List<Color> Relay           =[getColor("3a1c71"),getColor("d76d77"),getColor("ffaf7b")];
List<Color> Decent          =[getColor("4ca1af"),getColor("c4e0e5")];
List<Color> Sweet_Morning   =[getColor("ff5f6d"),getColor("ffc371")];
List<Color> Scooter         =[getColor("36d1dc"),getColor("5b86e5")];
List<Color> Celestial       =[getColor("c33764"),getColor("1d2671")];
List<Color> Royal           =[getColor("141e30"),getColor("243b55")];
List<Color> Sunset_Gradient =[getColor("ff7e5f"),getColor("feb47b")];
List<Color> Peach           =[getColor("ed4264"),getColor("ffedbc")];
List<Color> Sea_Blue        =[getColor("2b5876"),getColor("4e4376")];
List<Color> Orange_Coral    =[getColor("ff9966"),getColor("ff5e62")];
List<Color> Aubergine       =[getColor("aa076b"),getColor("61045f")];




getColor(String code) {

  code = code.toUpperCase().replaceAll("#", "");
  if (code.length == 6) {
    code = "FF" + code;
  }
  return Color(int.parse(code, radix: 16));
//  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}