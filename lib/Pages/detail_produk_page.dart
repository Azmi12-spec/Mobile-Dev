import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tes/Controller/detail_produk_ctrl.dart';

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key, });


  @override
  Widget build(BuildContext context) {
      final controller = Get.put(DetailProdukCtrl());
    return Scaffold(
      
      appBar: AppBar(title: Text("Detail Makanan")),

      body: Container(
        color: const Color(0xFFD9C5B2),
        child: Align(
          alignment: Alignment.topCenter,
          child: Card(
            color: const Color(0xFFF2EAE1),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min, // 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    controller.imageProduk,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                SizedBox(height: 10),

                Text(
                  controller.namaProduk,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                Text(
                  controller.hargaProduk,
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),

                SizedBox(height: 10),

                Text("Rating: ${controller.rating}"),
                SizedBox(height: 10),
                Text("Review: ${controller.reviews}"),

                SizedBox(height: 10),

                Text("Nama Toko: ${controller.namaToko}"),


                SizedBox(height: 10),

                Text(
                  "Deskripsi: ${controller.description}",
                ),
              ],
            ),
          ),
        ),
      ),
      )
    );
  }
}