import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes/Controller/list_produk_controller.dart';
import 'package:tes/Pages/detail_produk_page.dart';
import 'package:tes/Routes.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final ListProdukController listProdukController = Get.put(
    ListProdukController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Products")),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: listProdukController.listProduk.length,
        itemBuilder: (context, index) {
          final produk = listProdukController.listProduk[index];
          return Card(
            elevation: 4, // Efek Timbul
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                // Berpindah ke halaman detail sambil mengirim data produk
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
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(produk.imageProduk),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded( // Mengissi ruang yang tersisa agar tidak ada yg kosong
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
                                "${produk.rating} (${produk.reviews} ulasan)", //Mengambildata rating dan ulasann
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
    );
  }
}
