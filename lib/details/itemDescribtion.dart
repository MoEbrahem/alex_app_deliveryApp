import 'package:alex_app_task/MyColors.dart';
import 'package:alex_app_task/customGradientButton.dart';
import 'package:alex_app_task/customTitle.dart';
import 'package:flutter/material.dart';

class ItemDescribtion extends StatelessWidget {
  const ItemDescribtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      child: Row(
        children: [
          Container(
            width: 400,
            padding: const EdgeInsets.only(left: 35, top: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                // topRight: Radius.circular(20),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomTitle(title: "Descripción"),
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed \n diam nonumy eirmod tempor invidunt ut labore et dolore \n magna aliquyam erat, sed diam voluptua. At vero ",
                style: TextStyle(
                  color: AppColor.textColor,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const CustomTitle(title: "Ingredientes"),
                  const Spacer(),
                  Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Text(
                        "10 ingredientes",
                        style: TextStyle(
                            color: AppColor.borderColor, fontSize: 16),
                      )),
                ],
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ingredientes.length,
                  itemBuilder: (context, index) => Container(
                    width: 90,
                    child: Column(children: [
                      Image.asset(
                        ingredientes[index],
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      // Container(

                      // decoration: BoxDecoration(
                      //   borderRadius:
                      //       BorderRadius.circular(16),
                      //   image: DecorationImage(
                      //     image: AssetImage(ingredientes[index],
                      //     ),
                      //   fit: BoxFit.cover,
                      //   ),
                      // ),

                      // ),
                      Text(
                        names[index],
                        style: TextStyle(
                          color: AppColor.borderColor,
                          fontSize: 12,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Customgradientbutton(
                    textbutton: "Ordenar ahora",
                    width: 220,
                    height: 63,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "\$12.58",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: AppColor.primaryColor,
                    ),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}

List<String> ingredientes = [
  "assets/images/burgerSlice.png",
  "assets/images/bread.png",
  "assets/images/lettuce.png",
  "assets/images/onion.png",
];
List<String> names = [
  "Arrachera",
  "Pan ajonjoli",
  "Lechuga",
  "Cebolla",
];
