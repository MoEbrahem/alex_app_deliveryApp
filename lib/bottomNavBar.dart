import 'package:alex_app_task/MyColors.dart';
import 'package:alex_app_task/homeItems/homePage.dart';
import 'package:flutter/material.dart';
import 'package:alex_app_task/shoppingCart/shoppingCart.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          height: 70,
          shape: const CircularNotchedRectangle(),
          notchMargin: 15,
          elevation: 12,
          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 5),
          color: Colors.transparent,
          child: Card(
            child: Container(
              
              decoration: BoxDecoration(
                      color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(15)
                  ),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                children: [
                  Row(
                    children:[
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Homepage()));
              
                        },
                        child: Image.asset("assets/images/home.png")),
                      SizedBox(width: 40,),
                      Image.asset("assets/images/shop.png"),
                    ]
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(35)
                    ),
                    child: Container(
                      height: 50,
                      
                      // margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(50),
                      ),
                      child: InkWell(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const ShoppingCart()));
              },
              child: Image.asset("assets/images/basket.png",)
                    ),
                    ),
                  ),
                  Row(
                    children:[
                      Image.asset("assets/images/favorite.png"),
                      const SizedBox(width: 40,),
                  
                  const CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                    ]
                  )
                  
                  //           // ...List.generate(
                  //           //   bottomNavicons.length + 1,
                  //           //   (index) {
                  //           //     int i = index > 2 ? index - 1 : index;
                  //           //     return index == 2
                  //           //         ? const SizedBox(width: 100,)
                  //           //         : Expanded(
                  //           //           child: bottomNavicons[i],
                  //           //         );
                  //           //   },
                  //           // ),
                ],
              ),
            ),
          ),
        );
  }
}

// List bottomNavicons = [
//   Image.asset("assets/images/home.png"),
//   Image.asset("assets/images/shop.png"),
//   Image.asset("assets/images/favorite.png"),
//   const CircleAvatar(
//     radius: 10,
//     backgroundImage: AssetImage("assets/images/profile.png"),
//   ),
// ];

    // BottomAppBar(
    //   height: 120,notchMargin: 15,
    //   child: BottomNavigationBar(
    //     elevation: 12,
    //     currentIndex: 0,
    //     type: BottomNavigationBarType.shifting,
    //     backgroundColor: Colors.white,
    //     items: [
    //       BottomNavigationBarItem(
    //         label: "",
    //         icon: Container(
    //           color: Colors.blue,
    //           height: 50,
    //             width: 40,
    //           child: Image.asset("assets/images/home.png"),
    //         ),
    //       ),
    //       BottomNavigationBarItem(
    //         label: "",
    //         icon: Container(
    //           height: 50,
    //             width: 40,
    //           child: Image.asset("assets/images/shop.png")),
    //       ),
    //       BottomNavigationBarItem(
    //         label: "",
    //         icon: Container(
    //           height: 50,
    //           width: 100,
    //           margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
    //           padding: const EdgeInsets.symmetric(
    //             horizontal: 15,
    //           ),
    //           decoration: BoxDecoration(
    //               color: Colors.grey.shade200,
    //               borderRadius: BorderRadius.circular(35)),
    //           child: Container(
    //             height: 50,
    //             width: 60,
    //             // margin: const EdgeInsets.symmetric(horizontal: 20),
    //             decoration: BoxDecoration(
    //               color: AppColor.primaryColor,
    //               borderRadius: BorderRadius.circular(50),
    //             ),
    //             child: InkWell(
    //                 onTap: () {
    //                   Navigator.of(context).push(MaterialPageRoute(
    //                       builder: (context) => const ShoppingCart()));
    //                 },
    //                 child: Image.asset(
    //                   "assets/images/basket.png",
    //                 )),
    //           ),
    //         ),
    //       ),
    //       BottomNavigationBarItem(
    //           label: "",
    //           icon: Container(
    //             height: 50,
    //             width: 40,
    //             child: Image.asset("assets/images/favorite.png"))
    //           // Image.asset("assets/images/favorite.png"),
    //           ),
    //       BottomNavigationBarItem(
    //         label: "",
    //         icon: Container(
    //           height: 50,
    //             width: 40,
    //           child: CircleAvatar(
    //             radius: 10,
    //             backgroundImage: AssetImage("assets/images/profile.png"),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

