import 'package:alex_app_task/details/item_details.dart';
import 'package:alex_app_task/homeItems/CustomCardItem.dart';
import 'package:alex_app_task/homeItems/itemsList.dart';
import 'package:flutter/material.dart';

class Productospopulares extends StatelessWidget {
  const Productospopulares({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 240,
              child: ListView.separated(
                itemCount: itemsList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                separatorBuilder: (context,index)=>const SizedBox(width: 10,),
                itemBuilder: (context, index) {
                  return 
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ItemDetails()),);
                    },
                    child: CustomCardItem(
                      image: itemsList[index].image,
                      title: itemsList[index].title,
                      subTitle: itemsList[index].subTitle,
                      favIcon: itemsList[index].favIcon,
                      price: itemsList[index].price,
                      isFav: itemsList[index].isFav,
                    ),
                  );
                },
              ),
            );
  }
}