import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[700],

        borderRadius: BorderRadius.circular(15),
      ),

      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon, size: 25),
        ),
      ),
    );
  }
}
