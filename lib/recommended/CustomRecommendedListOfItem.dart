import 'package:alex_app_task/recommended/customCardRecommended.dart';
import 'package:alex_app_task/recommended/recommendedList.dart';
import 'package:flutter/material.dart';

class CustomRecommendedListOfItem extends StatelessWidget {
  const CustomRecommendedListOfItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        itemCount: recommendedList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          return CustomCardRecommed(
            image: recommendedList[index].image,
            title: recommendedList[index].title,
            subTitle: recommendedList[index].subTitle,
            price: recommendedList[index].price,
            isFav: recommendedList[index].isFav,
          );
        },
      ),
    );
  }
}
