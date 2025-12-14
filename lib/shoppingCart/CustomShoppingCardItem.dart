import 'package:alex_app_task/MyColors.dart';
import 'package:flutter/material.dart';

class CustomShoppingCardItem extends StatelessWidget {
final String title ;
  final String subTitle ;
  final String price ;
  final String image ;
  final String amount ;
  const CustomShoppingCardItem({super.key, required this.image, required this.title, required this.subTitle, required this.price, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.whiteColor,
              elevation: 8,
              child: Container(
                padding:
                    const EdgeInsets.only(right: 10,left:10, top: 10),
                
                width: 240,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        CircleAvatar(
                          backgroundColor: const Color(0xffF1395E),
                          radius: 20,
                          child: Icon(Icons.delete_outline,color: AppColor.whiteColor,),
                          
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration:
                          const BoxDecoration(shape: BoxShape.circle,),
                      child: Image.asset(
                      image,
                      height: 90,
                      width: 90,
                      fit: BoxFit.fill,
                    ),
                    
                    ),
                    
                    Text(
                      title,
                      style: TextStyle(fontSize: 20,color: AppColor.textColor,fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(height: 10),
                    Text(
                      subTitle,
                      style: TextStyle(fontSize: 10,color: AppColor.textColor),
                    ),
                    SizedBox(height: 20),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.remove,color: AppColor.primaryColor,),),
                        Text(
                          amount,
                          style: TextStyle(
                            color: AppColor.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.add,color: AppColor.whiteColor,),),
                        const SizedBox(width: 20,),
                        Text("\$20",style: TextStyle(color: Color(0xff20D0C4),fontSize: 20,fontWeight: FontWeight.w900),),
                      ],
                    )
                  ],
                ),
              ),
            );
  }
}