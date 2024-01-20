import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:getcliexemple/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final textw = "Welcome ".obs;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    auth.currentUser == null
        ? Timer(const Duration(seconds: 3), () {
            textw.value += "the world";
            //go to login view
            Get.toNamed('/login');
          })
        : Timer(const Duration(seconds: 3), () {
            textw.value += "the world";
            //go to login view
            Get.toNamed('/home');
          });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
