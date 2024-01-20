import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.red,
          radius: 30,
        ),
        const Text(
          "Explorer",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        IconButton(
          onPressed: () => _signOut(),
          padding: const EdgeInsets.all(10),
          iconSize: 40,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
          ),
          icon: const Icon(
            Icons.notifications,
          ),
        )
      ],
    );
  }
}
