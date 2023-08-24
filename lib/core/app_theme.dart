import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF5D9CEC);
  static ThemeData lightTheme = ThemeData(
    primaryColor: Color(0xFF5D9CEC),
    scaffoldBackgroundColor: Color(0xFFDFECDB),
    appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: primaryColor,
        size: 28,
      ),
      unselectedIconTheme: IconThemeData(
        color: primaryColor,
        size: 30,
      ),
    ),
  );
}
