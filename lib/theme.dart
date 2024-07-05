import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromRGBO(217, 217, 217, 1),
    appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: const WidgetStatePropertyAll(
          Size(double.infinity, 50),
        ),
        backgroundColor: const WidgetStatePropertyAll(AppColors.red),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.grey1),
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      isDense: true,
      hintStyle: const TextStyle(
        fontSize: 14,
        color: AppColors.grey1,
        fontWeight: FontWeight.w300,
      ),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 24,
        color: AppColors.light,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        fontSize: 16,
        color: AppColors.light,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppColors.light,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: AppColors.light,
        fontWeight: FontWeight.w300,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.light,
      ),
      headlineSmall: TextStyle(
        fontSize: 13,
        color: AppColors.light,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w300,
      ),
      titleSmall: TextStyle(
        fontSize: 13,
        color: AppColors.grey,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}

class AppColors {
  AppColors._();

  static const white = Colors.white;
  static const light = Color.fromRGBO(246, 244, 244, 1);
  static const grey = Color.fromRGBO(188, 179, 179, 1);
  static const grey1 = Color.fromRGBO(141, 141, 141, 1);
  static const grey2 = Color.fromRGBO(79, 79, 79, 1);
  static const brown = Color.fromRGBO(66, 43, 43, 1);
  static const purple = Color.fromRGBO(116, 70, 172, 1);
  static const red = Color.fromRGBO(170, 4, 74, 1);
  static const darkPurple = Color.fromRGBO(31, 9, 58, 1);
  static const darkBlue = Color.fromRGBO(13, 19, 51, 1);
  static const yellow = Color.fromRGBO(242, 201, 76, 1);
  static const dark = Color.fromRGBO(57, 55, 55, 1);
  static const dark1 = Color.fromRGBO(33, 32, 32, 1);

  static const gradient1 = Color.fromRGBO(255, 0, 0, 1);
  static const gradient2 = Color.fromRGBO(245, 0, 0, 1);
  static const gradient3 = Color.fromRGBO(218, 0, 0, 1);
  static const gradient4 = Color.fromRGBO(174, 0, 0, 1);
  static const gradient5 = Color.fromRGBO(113, 0, 0, 1);
  static const gradient6 = Color.fromRGBO(37, 0, 0, 1);
  static const black = Color.fromRGBO(0, 0, 0, 1);
}
