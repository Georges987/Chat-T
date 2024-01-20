import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getcliexemple/app/modules/login/views/login_view.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Center(
        child: Obx(() => Text(controller.textw.value)),
      )),
    );
  }
}
