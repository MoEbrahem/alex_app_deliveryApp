import 'package:flutter/material.dart';

class ItemModel {
  final String title ;
  final String subTitle ;
  final String price ;
  final String image ;
  final IconData favIcon ;
  final bool isFav;

  
ItemModel({
    required this.isFav,  
    required this.price,
    required this.title, 
    required this.subTitle, 
    required this.image,
    required this.favIcon, 
    });
}