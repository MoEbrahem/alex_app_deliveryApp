import 'package:alex_app_task/MyColors.dart';
import 'package:flutter/material.dart';

class CustomCardRecommed extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String price;
  final bool isFav; 
  const CustomCardRecommed({super.key, required this.image, required this.title, required this.subTitle, required this.price, required this.isFav});

  @override
  Widget build(BuildContext context) {
    return Card(
                  elevation: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.only(right: 10,left:10, top: 10),
                    height: 150,
                    width: 250,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            
                            child: Image.asset(
                            image,
                            height: 140,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                          
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                children: [
                                  const Text("Naturales",style: TextStyle(fontSize: 12,color: Color(0xffC0C2C5)),),
                                  const Spacer(),
                                  Icon(
                                    isFav ? Icons.favorite:Icons.favorite_outline,
                                    color: isFav ? Colors.red : const Color(0xffBBBBBB),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                            
                          
                
                        Text(
                          title,
                          style:  TextStyle(fontSize: 14,color: AppColor.textColor),
                        ),
                        Text(
                          subTitle,
                          style: const TextStyle(fontSize: 8),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                          price,
                          style: TextStyle(
                            color: AppColor.textColor,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.chevron_right,
                          
                          color: AppColor.textColor)
                          ],
                        )
                      ],
                    ),
                        )
                  ],
                    ),
                  ),
                );
  }
}