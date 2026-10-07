import 'package:get/get.dart';

class DetailProdukCtrl extends GetxController {
  late String namaProduk;
  late String hargaProduk;
  late String description;
  late String imageProduk;
  late int reviews;
  late double rating;
  late String namaToko;

void onInit() {
    super.onInit();
    // Ambil data dari argumen yang dikirimkan
    final args = Get.arguments;
    namaProduk = args['namaProduk'];
    hargaProduk = args['hargaProduk'];
    description = args['description'];
    imageProduk = args['imageProduk'];
    reviews = args['reviews'];
    rating = args['rating'];
    namaToko = args['namaToko'];
  }
  
}