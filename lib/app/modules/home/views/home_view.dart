import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getcliexemple/app/components/bottom_bar.dart';
import 'package:getcliexemple/app/components/navbar.dart';
import 'package:getcliexemple/app/components/post_card.dart';
import 'package:getcliexemple/app/components/status_circle.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: const [
              // TODO: navbar
              Navbar(),
              // TODO : StatusBar
              StatusAvatar(status: true),
              // TODO : List of post
              PostCard(post: "post"),
            ]),
      ),
      bottomNavigationBar: RoundedBar(),
    );
  }
}
