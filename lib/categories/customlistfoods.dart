import 'package:alex_app_task/MyColors.dart';
import 'package:alex_app_task/categories/categoriesList.dart';
import 'package:flutter/material.dart';

class CustomListCategoriesFoods extends StatelessWidget {
  const CustomListCategoriesFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 150,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, i) => const SizedBox(
                  width: 25,
                ),
                itemCount: categoriesList.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: categoriesList[index].color,
                      ),
                      child: Image.asset(
                        categoriesList[index].image,
                        height: 40,
                      ),
                    ),
                    Text(
                      categoriesList[index].title,
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.bold,
                        
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}