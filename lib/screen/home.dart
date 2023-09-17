import 'package:flutter/material.dart';
import 'package:threads_n_styles/components/home_appbar.dart';
import 'package:threads_n_styles/components/home_main_category.dart';
import 'package:threads_n_styles/components/home_searchbar.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: SafeArea(
          child: Column(
        children: [
          SearchHere(),
          MainCatWidget(),
        ],
      )),
    );
  }
}
