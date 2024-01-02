import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getcliexemple/firebase_options.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!Platform.isLinux && !Platform.isWindows) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    runApp(
      GetMaterialApp(
        title: "ChatT",
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    );
  } else {
    runApp(
      const MaterialApp(
          title: "Application",
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: Text("Not supported platform\n"
                  "Only Android, iOS, Web and MacOS are supported."),
            ),
          )),
    );
  }
}
