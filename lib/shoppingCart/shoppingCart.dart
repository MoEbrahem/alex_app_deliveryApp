import 'package:alex_app_task/MyColors.dart';
import 'package:alex_app_task/customGradientButton.dart';
import 'package:alex_app_task/shoppingCart/CustomShoppingCardItem.dart';
import 'package:alex_app_task/shoppingCart/orderList.dart';
import 'package:alex_app_task/shoppingCart/shoppingList.dart';
import 'package:alex_app_task/shoppingCart/totalPriceRow.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Carrito",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColor.primaryColor,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: AppColor.whiteColor,
        elevation: 5,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    if (index < 2) {
                      return Container(
                        width: 160,
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: shoppingCartList[index].selected
                              ? AppColor.primaryColor
                              : Color(0xffE2EDF2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.home_outlined,
                              color: shoppingCartList[index].selected
                                  ? AppColor.whiteColor
                                  : AppColor.primaryColor,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  shoppingCartList[index].title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: shoppingCartList[index].selected
                                        ? AppColor.whiteColor
                                        : Colors.black,
                                    fontSize: 12,
                                  
                                  ),
                                ),
                                Text(
                                  shoppingCartList[index].subtitle,
                                  style: TextStyle(
                                    color: shoppingCartList[index].selected
                                        ? AppColor.whiteColor
                                        : AppColor.borderColor,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    } else {
                      return CircleAvatar(
                        backgroundColor: AppColor.primaryColor,
                        radius: 25,
                        child: Icon(
                          Icons.add,
                          color: AppColor.whiteColor,
                        ),
                      );
                    }
                  }),
            ),
            const SizedBox(height: 40,),
            SizedBox(
              height: 300,
              child: ListView.separated(
                itemCount: orderList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                separatorBuilder: (context,index)=>const SizedBox(width: 10,),
                itemBuilder: (context, index) {
                  return 
                  InkWell(
                    onTap: (){
                      
                    },
                    child: CustomShoppingCardItem(
                      image: orderList[index].image,
                      title: orderList[index].title,
                      subTitle: orderList[index].subTitle,
                      price: orderList[index].price,
                      amount: orderList[index].amount,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15,),
              child: Column(
                children: [
                  TotalPriceRow(text1: "SubTotal:", text2: "\$85.00 usd", color:  AppColor.textColor, fontSize: 14,fontweight: FontWeight.w600,),
                  TotalPriceRow(text1: "Envio:", text2: "Gratis", color:  AppColor.textColor, fontSize: 14,fontweight: FontWeight.w600,),
                  const SizedBox(height: 10,),
                  TotalPriceRow(text1: "Total:", text2: "\$85.00 usd", color:  AppColor.primaryColor, fontSize: 18,fontweight: FontWeight.w800,),
                  const SizedBox(height: 20,),
                  const Customgradientbutton(textbutton: "Realizar compra", width: double.infinity, height: 60),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
