import 'package:alex_app_task/MyColors.dart';
import 'package:alex_app_task/CustomTitleAppBar.dart';
import 'package:alex_app_task/bottomNavBar.dart';
import 'package:alex_app_task/categories/customlistfoods.dart';
import 'package:alex_app_task/customTitle.dart';
import 'package:alex_app_task/homeItems/productosPopulares.dart';
import 'package:alex_app_task/recommended/CustomRecommendedListOfItem.dart';
import 'package:alex_app_task/shoppingCart/shoppingCart.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColor.primaryColor,
          shape: const CircleBorder(),
          
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ShoppingCart()));
            },
            child: Image.asset("assets/images/basket.png",fit: BoxFit.fill,)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const CustomBottomNavBar(),
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: AppColor.whiteColor,
          elevation: 5,
          centerTitle: true,
          title: const TitleWidget(),
          actions: [
            const Icon(
              Icons.notifications_outlined,
              color: Color(0xff20D0C4),
              size: 30,
            ),
            const SizedBox(
              width: 8,
            ),
            Image.asset(
              "assets/images/appBaricon.png",
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(
            left: 18,
            top: 15,
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CustomTitle(title: "Explorar categorias"),
                      const Spacer(),
                      Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Ver todos",
                            style: TextStyle(
                                color: AppColor.borderColor, fontSize: 16),
                          )),
                    ],
                  ),
                  const CustomListCategoriesFoods(),
                  const CustomTitle(title: "Productos populares"),
                  const Productospopulares(),
                  const SizedBox(height: 15),
                  const CustomTitle(title: "Recomedados"),
                  const CustomRecommendedListOfItem(),
                ],
              ),
            ],
          ),
        ));
  }
}


