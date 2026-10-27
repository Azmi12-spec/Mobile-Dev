import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes/Controller/list_produk_controller.dart';
import 'package:tes/Routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9C5B2),
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                "Produk Pilihan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // ListView builder horizontal dibungkus Container(height) sesuai instruksi
            Container(
              height: 230,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: controller.listProduk.length,
                  itemBuilder: (context, index) {
                    final produk = controller.listProduk[index];
                    final displayHarga = produk.hargaProduk.startsWith("Rp")
                        ? produk.hargaProduk
                        : "Rp ${produk.hargaProduk}";

                    return Container(
                      width: 170,
                      margin: const EdgeInsets.only(right: 12),
                      child: Card(
                        color: const Color(0xFFF2EAE1),
                        elevation: 4,
                        shadowColor: Colors.black12,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: InkWell(
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 120,
                                width: double.infinity,
                                color: Colors.grey[200],
                                child: Image.asset(
                                  produk.imageProduk,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      const Icon(
                                        Icons.broken_image,
                                        color: Colors.grey,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      produk.namaProduk,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      displayHarga,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star_rounded,
                                          size: 16,
                                          color: Colors.amber,
                                        ),
                                        const SizedBox(width: 4),
                                        Expanded(
                                          child: Text(
                                            "${produk.rating} (${produk.reviews})",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}