import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/app/configs/color_lib.dart';

ThemeData themeData() {
  return ThemeData(
    primaryColor: const Color.fromARGB(255, 0, 0, 0),
    scaffoldBackgroundColor: ColorLib.background,
    backgroundColor: ColorLib.background,
    fontFamily: 'Poppins',
    textTheme: textTheme(),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorLib.background,
      elevation: 0,
    ),
    cardTheme: const CardTheme(
      color: ColorLib.choco,
      shadowColor: ColorLib.lightGrey,
      elevation: 0,
      //margin: EdgeInsets.fromLTRB(14, 8, 0, 0),
    ),
    iconTheme: const IconThemeData(
      color: ColorLib.blackText,
    ),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    headline5: TextStyle(
        color: ColorLib.blackText, fontWeight: FontWeight.w500, fontSize: 22),
    headline6: TextStyle(
        color: ColorLib.blackText, fontWeight: FontWeight.w500, fontSize: 16),
    bodyText1: TextStyle(
        color: ColorLib.blackText, fontWeight: FontWeight.w500, fontSize: 14),
    subtitle1: TextStyle(
        color: ColorLib.blackText, fontWeight: FontWeight.normal, fontSize: 20),
    caption: TextStyle(
        color: ColorLib.blackText, fontWeight: FontWeight.normal, fontSize: 12),
  );
}
