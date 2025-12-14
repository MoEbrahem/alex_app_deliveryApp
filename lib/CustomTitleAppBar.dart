import 'package:alex_app_task/MyColors.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Container(
              width: 150,
              height: 33,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              // margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.borderColor,
                  ),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: AppColor.primaryColor,
                  )
                ],
              ),
            ),

            Text(
              "Inicio",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor,
                
              ),
            ),
          ],
        );
  }
}