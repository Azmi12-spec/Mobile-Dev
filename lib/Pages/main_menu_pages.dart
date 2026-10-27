import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:tes/Controller/main_menu_controller.dart';


class MainMenuPages extends StatelessWidget {
   MainMenuPages({super.key});

   final menuController = Get.put(MainMenuController());


  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body:IndexedStack(index: menuController.selectedIndex.value,children: menuController.listPages,),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: menuController.selectedIndex.value,
        onTap: (index) {
          menuController.changePage(index);
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],),
    ));
  }
}