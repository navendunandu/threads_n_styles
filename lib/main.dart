import 'package:flutter/material.dart';
import 'package:threads_n_styles/screen/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Threads N Styles',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const ScreenSplash());
  }
}
