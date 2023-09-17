import 'package:flutter/material.dart';
import 'package:threads_n_styles/screen/category.dart';

class MainCatWidget extends StatelessWidget {
  const MainCatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => navigateToCategoryDetail(context, 'All'),
            child: Image.asset(
              "assets/All.png",
              height: 100,
            ),
          ),
          GestureDetector(
            onTap: () => navigateToCategoryDetail(context, 'Men'),
            child: Image.asset(
              "assets/Men.png",
              height: 100,
            ),
          ),
          GestureDetector(
            onTap: () => navigateToCategoryDetail(context, 'Women'),
            child: Image.asset(
              "assets/Women.png",
              height: 100,
            ),
          ),
          GestureDetector(
            onTap: () => navigateToCategoryDetail(context, 'Kids'),
            child: Image.asset(
              "assets/Kids.png",
              height: 100,
            ),
          )
        ],
      ),
    );
  }

  void navigateToCategoryDetail(BuildContext context, String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Category(category: category),
      ),
    );
  }
}
