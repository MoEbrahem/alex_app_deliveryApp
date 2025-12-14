import 'package:alex_app_task/MyColors.dart';
import 'package:flutter/material.dart';

class CustomCardItem extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String price;
  final IconData favIcon;
  final bool isFav; 
  const CustomCardItem({super.key, required this.image, required this.title, required this.subTitle, required this.favIcon, required this.price, required this.isFav});

  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 8,
              child: Container(
                padding:
                    const EdgeInsets.only(right: 10,left:10, top: 10),
                height: 220,
                width: 170,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        Icon(
                          favIcon,
                          color: isFav ? Colors.red : const Color(0xffBBBBBB),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 4),
                        )
                      ]),
                      child: Image.asset(
                      image,
                      height: 115,
                      width: 115,
                      fit: BoxFit.fill,
                    ),
                      // child:const  CircleAvatar(
                      //   radius: 50,
                      //   backgroundImage:
                      //       AssetImage('assets/images/pizzaClassic.png',),
                      // ),
                    ),
                    

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              subTitle,
                              style: TextStyle(fontSize: 8),
                            ),
                            SizedBox(height: 10),
                            Text(
                              price,
                              style: TextStyle(
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                        const Spacer(),
                        Icon(
                          Icons.chevron_right,
                          
                          color: AppColor.textColor),
                      ],
                    )
                  ],
                ),
              ),
            );
  }
}