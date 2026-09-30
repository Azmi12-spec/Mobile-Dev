import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {

  late String nama;
  late String noWa;
  late String email;
  late String alamat;
  late String jenisKelamin;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;//Menangkap data dari tampilan sebelumnya
    nama = arguments['name'];
    //Tambahkan Yang Lain Juga 
    noWa = arguments['no_wa'];
    email = arguments['email'];
    alamat = arguments['alamat'];
    jenisKelamin = arguments['jenis_kelamin'];
  }
}