import 'package:flutter/material.dart';

class TotalPriceRow extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color;
  final double fontSize;
  final FontWeight fontweight;
  const TotalPriceRow({super.key, required this.text1, required this.text2, required this.color, required this.fontSize, required this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text1,style: TextStyle(color: color,fontSize: fontSize,fontWeight: fontweight),),
              Text(text2,style: TextStyle(color: color,fontSize: fontSize,fontWeight: fontweight),),
            ],
          );
  }
}