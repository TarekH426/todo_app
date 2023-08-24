import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projects/layout/home_layout.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "splash";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.of(context).pushReplacementNamed(HomeLayoutView.routeName);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Image.asset(
        "assets/images/splash.png",
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.fill,
      ),
    );
  }
}
