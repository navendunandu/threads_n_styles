import 'package:flutter/material.dart';
import 'package:threads_n_styles/components/home_appbar.dart';

class Category extends StatelessWidget {
  const Category({super.key, required String category});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Text('category'),
          )
        ],
      )),
    );
  }
}
