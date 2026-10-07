import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tes/Components/Registration_TextField.dart';
import 'package:get/get.dart';
import '../Routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController txtNama = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();

 return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: Column(
        children: [
          MyTextfield(myHint: "input nama", txtController: txtNama, radius: 10),
          MyTextfield(myHint: "input no wa", txtController: txtNoWa, radius: 10),
          MyTextfield(myHint: "input email", txtController: txtEmail, radius: 10),
          MyTextfield(myHint: "input alamat", txtController: txtAlamat, radius: 10),
          MyTextfield(myHint: "input jenis kelamin", txtController: txtJenisKelamin, radius: 10),
          ElevatedButton(
            onPressed: () {
              // Pindah tampilan dan mengirim data
              Get.toNamed(
                Routes.confirmRegistration,
                arguments: {
                  'name': txtNama.text.toString(),
                  'no_wa': txtNoWa.text.toString(),
                  'email': txtEmail.text.toString(),
                  'alamat': txtAlamat.text.toString(),
                  'jenis_kelamin': txtJenisKelamin.text.toString(),
                },
              );
            },
            child: Text("send"),
          ),
        ],
      ),
    );
  }
}