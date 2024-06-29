import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    ),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
          color: AppColors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: AppColors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        )),
  );
}

class AppColors {
  static const white = Colors.white;
  static const grey = Color.fromRGBO(97, 97, 97, 1);
  static const darkerGrey = Color.fromRGBO(51, 51, 51, 1);
  static const darkGrey = Color.fromRGBO(57, 57, 57, 1);
  static const savva = Color.fromRGBO(235, 87, 116, 1);
  static const olluco = Color.fromRGBO(235, 88, 164, 1);
  static const loona = Color.fromRGBO(100, 86, 240, 1);
  static const folk = Color.fromRGBO(83, 174, 236, 1);
  static const whiteRabbit = Color.fromRGBO(91, 192, 205, 1);
  static const sage = Color.fromRGBO(97, 204, 107, 1);
  static const maya = Color.fromRGBO(235, 187, 70, 1);
  static const jun = Color.fromRGBO(239, 133, 63, 1);
  static const onest = Color.fromRGBO(158, 100, 246, 1);
  static const probka = Color.fromRGBO(89, 183, 248, 1);
}
