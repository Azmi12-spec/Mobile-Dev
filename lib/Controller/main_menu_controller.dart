import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes/menu/history.dart';
import 'package:tes/menu/home.dart';
import 'package:tes/menu/profile.dart';

class MainMenuController extends GetxController {

  final RxInt selectedIndex = 0.obs;


  void changePage(int index) {
    selectedIndex.value = index;

  }

     List<Widget> listPages = [
    HomePage(),
    History(),
    ProfilePages(),
   ];


}