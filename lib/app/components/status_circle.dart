import 'package:flutter/material.dart';

class StatusAvatar extends StatelessWidget {
  const StatusAvatar({super.key, required this.status});

  final bool status;

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.red,
          child: CircleAvatar(
            radius: 15,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.blue,
            ),
          ),
        ),
        Text(
          "Moi",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
