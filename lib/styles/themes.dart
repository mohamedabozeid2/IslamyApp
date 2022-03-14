import 'package:flutter/material.dart';

bool darkMode = true;

class MyThemeData {
  static Color primaryColor = const Color(0xffB7935F);
  static Color accentColor = const Color(0xff242424);
}

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    canvasColor: const Color(0xffB7935F),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xffB7935F),
      selectedItemColor: Color(0xff242424),
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ));

ThemeData darkTheme = ThemeData(

    scaffoldBackgroundColor: Colors.transparent,
    canvasColor: const Color(0xff141A2E),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141A2E),
      selectedItemColor: Color(0xffFACC1D),
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ));
