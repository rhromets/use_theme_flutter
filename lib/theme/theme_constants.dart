// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.deepOrangeAccent;
const COLOR_ACCENT = Colors.orange;

const COLOR_PRIMARY_DARK = Color.fromARGB(255, 6, 40, 102);
const COLOR_ACCENT_DARK = Colors.deepPurple;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: COLOR_PRIMARY,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 26,
      fontWeight: FontWeight.w600,
    ),
    centerTitle: true,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: COLOR_ACCENT,
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll<TextStyle>(
        TextStyle(
          letterSpacing: 1.2,
        ),
      ),
      backgroundColor: WidgetStatePropertyAll<Color?>(COLOR_ACCENT),
      padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
      ),
      shape: WidgetStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    ),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      letterSpacing: 1.2,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.1),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: COLOR_PRIMARY_DARK,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 26,
      fontWeight: FontWeight.w600,
    ),
    centerTitle: true,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: COLOR_ACCENT_DARK,
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll<TextStyle>(
        TextStyle(
          letterSpacing: 1.2,
        ),
      ),
      backgroundColor: WidgetStatePropertyAll<Color?>(COLOR_ACCENT_DARK),
      padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
      ),
      shape: WidgetStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    ),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      letterSpacing: 1.2,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.1),
  ),
);
