import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes/Controller/menu_drawer_ctrl.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final menuController = Get.put(MenuDrawerCtrl());


  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      backgroundColor: const Color(0xFFD9C5B2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2EAE1),
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Menu",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFFF2EAE1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFD9C5B2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xFFF2EAE1),
                    child: Icon(
                      Icons.person,
                      size: 32,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Muhammad Shofa 'Azmi",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "azmishofamuhammad@gmail.com",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: menuController.selectedIndex.value == 0,
              selectedColor: Colors.brown[800],
              onTap: () {
                menuController.changePage(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              selected: menuController.selectedIndex.value == 1,
              selectedColor: Colors.brown[800],
              onTap: () {
                menuController.changePage(1);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              selected: menuController.selectedIndex.value == 2,
              selectedColor: Colors.brown[800],
              onTap: () {
                menuController.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: IndexedStack(
        index: menuController.selectedIndex.value,
        children: menuController.listPages,
      ),
    ));
  }
}