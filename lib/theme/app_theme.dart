import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,

    appBarTheme: AppBarTheme(
      color: Colors.teal.shade600,
      elevation: 10
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primary
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primary,
      shape: const StadiumBorder(),
      elevation: 0
    )
  ),
  inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: primary),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primary),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        topRight: Radius.circular(10)
      )
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primary),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        topRight: Radius.circular(10)
      )
    ),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        topRight: Radius.circular(10)
      )
    )
  )
  );
  

  static final ThemeData darkTheme = ThemeData.light().copyWith(
    primaryColor: primary,

    appBarTheme: AppBarTheme(
      color: Colors.teal.shade600,
      elevation: 10
    ),
    scaffoldBackgroundColor: Colors.black,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)
    ),
    inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: primary),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primary),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        topRight: Radius.circular(10)
      )
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primary),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        topRight: Radius.circular(10)
      )
    ),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        topRight: Radius.circular(10)
      )
    )
  )
  );

  
}