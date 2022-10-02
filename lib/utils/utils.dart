import 'package:flutter/material.dart';
import 'package:flutter_expense_app/constants/app_constants.dart';

class Utils {
  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: AppConstants.quickSand,
      primarySwatch: Colors.purple,
      textTheme: ThemeData.light().textTheme.copyWith(
            headline6: const TextStyle(
              fontFamily: AppConstants.openSans,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            button: const TextStyle(color: Colors.white),
          ),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontFamily: AppConstants.openSans,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
