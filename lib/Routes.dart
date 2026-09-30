import 'package:get/get.dart';
import 'package:tes/Pages/Confirm_registration_page.dart';
import 'package:tes/Pages/Registration_pages.dart';

class Routes{
  //List pages yang ada di aplikasi kita 
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirm-registration";
  static const String login = "/login";
  static const String kalkulator = "/kalkulator";
  static const String login_clone = "/login-clone";
  // login, kalkulator dll

  //kita tampung kedalam array yang akan kita pasang ke main dart
  static final myPages = [
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmRegistration, page: ()=> ConfirmRegistrationPage()),
    //Tambahkan pages yang lain
  ];
}

