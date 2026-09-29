import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilhitung = 0.0.obs;

  void tambah(double angka1, double angka2) {
    double hasiltambah = angka1 + angka2;
    hasilhitung.value = hasiltambah;
    Get.snackbar(
      "Hasil Jumlah",
      "${hasiltambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilkurang = angka1 - angka2;
    hasilhitung.value = hasilkurang;
    Get.snackbar(
      "Hasil Kurang",
      "${hasilkurang.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilkali = angka1 * angka2;
    hasilhitung.value = hasilkali;
    Get.snackbar(
      "Hasil Kali",
      "${hasilkali.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    if (angka2 == 0) {
      Get.snackbar(
        "Error",
        "Tidak bisa membagi dengan nol",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    double hasilbagi = angka1 / angka2;
    hasilhitung.value = hasilbagi;
    Get.snackbar(
      "Hasil Bagi",
      "${hasilbagi.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}