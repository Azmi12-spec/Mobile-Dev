import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes/Controller/list_produk_controller.dart';
import 'package:tes/Pages/detail_produk_page.dart';
import 'package:tes/Routes.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});
  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Products")),
      body: Container(
        color: const Color(0xFFD9C5B2),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: controller.listProduk.length,
          itemBuilder: (context, index) {
            final produk = controller.listProduk[index];
            return Card(
              color: const Color(0xFFF2EAE1),
              elevation: 4, // Efek Timbul
              margin: const EdgeInsets.only(bottom: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Get.toNamed(
                    Routes.detailProduk,
                    arguments: {
                      'namaProduk': produk.namaProduk,
                      'hargaProduk': produk.hargaProduk,
                      'description': produk.description,
                      'imageProduk': produk.imageProduk,
                      'reviews': produk.reviews,
                      'rating': produk.rating,
                      'namaToko': produk.namaToko,
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        produk.imageProduk,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 12),//jarak
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              produk.namaProduk,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              produk.hargaProduk,
                              style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              produk.namaToko,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 14,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "${produk.rating} (${produk.reviews} ulasan)",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
