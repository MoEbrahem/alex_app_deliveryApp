import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          
          height: 70,
          shape: const CircularNotchedRectangle(),
          notchMargin: 15,
          elevation: 12,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            
            children: [
              
              
              ...List.generate(
                bottomNavicons.length + 1,
                (index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? const SizedBox(width: 100,)
                      : Expanded(
                        child: bottomNavicons[i],
                      );
                },
              ),
            ],
          ),
        );
  }
}

List bottomNavicons = [
  Image.asset("assets/images/home.png"),
  Image.asset("assets/images/shop.png"),
  Image.asset("assets/images/favorite.png"),
  const CircleAvatar(
    radius: 10,
    backgroundImage: AssetImage("assets/images/profile.png"),
  ),
];