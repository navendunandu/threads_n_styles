import 'package:flutter/material.dart';
import 'package:threads_n_styles/screen/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  _ScreenSplashState createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    gotoLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Image.asset(
            'assets/7515318.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void gotoLogin() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ScreenLogin()),
      );
    });
  }
}
