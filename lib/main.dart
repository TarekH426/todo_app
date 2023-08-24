import 'package:flutter/material.dart';
import 'package:projects/core/app_theme.dart';
import 'package:projects/layout/home_layout.dart';
import 'package:projects/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        HomeLayoutView.routeName: (context) => HomeLayoutView()
      },
    );
  }
}
