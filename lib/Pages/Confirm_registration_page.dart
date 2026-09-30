import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tes/Controller/Confirm_registration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama :  " + controller.nama.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          Text(
            "No Wa :  " + controller.noWa.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          Text(
            "Email :  " + controller.email.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          Text(
            "Alamat :  " + controller.alamat.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          Text(
            "Jenis Kelamin :  " + controller.jenisKelamin.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Back?"),
          ),
        ],
      ),
    );
  }
}