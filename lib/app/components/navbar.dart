import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

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
          onPressed: () {},
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
