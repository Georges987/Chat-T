import 'package:flutter/material.dart';

class RoundedBar extends StatefulWidget {
  const RoundedBar({super.key});

  @override
  State<RoundedBar> createState() => _RoundedBarState();
}

class _RoundedBarState extends State<RoundedBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    ]);
  }
}
