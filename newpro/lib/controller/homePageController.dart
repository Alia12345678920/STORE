import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:newpro/view/homeScreen.dart';
import 'package:newpro/view/settings.dart';
import 'package:newpro/view/cart.dart';


class homePageController extends GetxController{

  List<String> titles =[
    "a",
    "b",
    "s",
  ];

  List<Widget> screens = [
     homeScreen(),
    cart(),
    settings(),
];
   int currentindex = 0;

}