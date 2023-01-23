import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData(BuildContext context, bool isDarkTheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: isDarkTheme
          ? const ColorScheme.dark(
              primary: Color(0xFF4B5EFC),
              secondary: Color(0XFF4E505F),
              tertiary: Color(0XFF2E2F38),
            )
          : const ColorScheme.light(
              primary: Color(0xFF4B5EFC),
              secondary: Color(0xFFD2D3DA),
              tertiary: Color(0XFFFFFFFF),
            ),
      backgroundColor:
          isDarkTheme ? const Color(0xFF17171C) : const Color(0xFFF1F2F3),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Work Sans',
          fontSize: 96,
          fontWeight: FontWeight.w300,
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Work Sans',
          fontSize: 40,
          fontWeight: FontWeight.w300,
          color: isDarkTheme
              ? Colors.white.withOpacity(0.4)
              : Colors.black.withOpacity(0.4),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              isDarkTheme ? const Color(0xFF2E2F38) : Colors.white),
          foregroundColor: MaterialStateProperty.all(
              isDarkTheme ? Colors.white : Colors.black),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontFamily: 'Work Sans',
              fontSize: 32,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
