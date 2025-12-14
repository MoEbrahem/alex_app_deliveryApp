import 'package:alex_app_task/MyColors.dart';
import 'package:alex_app_task/customTitle.dart';
import 'package:alex_app_task/details/itemDescribtion.dart';
import 'package:alex_app_task/homeItems/homePage.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20)),
                    ),
                    child: Image.asset(
                      "assets/images/hamburger.jpg",
                    ),
                  ),
                  
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          "Hamburguesa especial",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                const ItemDescribtion(),
                const Positioned(
                  top: 345,
                  right:10,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffF1395E),
                    child: Icon(Icons.favorite_outline,color: Colors.white,),
                  ),
                  ),
                
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

