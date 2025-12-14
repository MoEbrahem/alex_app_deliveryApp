import 'package:flutter/material.dart';

class Customgradientbutton extends StatelessWidget {
  final String textbutton;
  final double width;
  final double height;
  const Customgradientbutton(
      {super.key,
      required this.textbutton,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF4A1192),
            Color(0xFF2CD5C4),
          ],
        ),
      ),
      child: Center(
        child: Text(
          textbutton,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
