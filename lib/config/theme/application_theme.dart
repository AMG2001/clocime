import 'package:clocime/config/colors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ApplicationTheme {
  /**
   ####################### Application dark theme property ##############################
   */
  static ThemeData applicationDarkTheme = ThemeData.dark().copyWith(
    /**
     * -------------------- Scaffold Background Color -----------------------
     */
    scaffoldBackgroundColor: Colors.black,
/**
 * -------------------------- Primary Color --------------------------
 */
    primaryColor: AppColors.primaryColor,
    /**
  * -------------------------- AppBar Theme --------------------------
  */
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryColor),
    /***
     * -------------------------- Prrmary Text Theme --------------------------
     */
    primaryTextTheme: const TextTheme(
      button: TextStyle(color: Colors.white, fontSize: 18),
      headline1: TextStyle(color: Colors.white, fontSize: 72),
      headline2: TextStyle(color: Colors.white, fontSize: 56),
      headline3: TextStyle(color: Colors.white, fontSize: 48),
      headline4: TextStyle(color: Colors.white, fontSize: 32),
      headline5: TextStyle(color: Colors.white, fontSize: 24),
      headline6: TextStyle(color: Colors.white, fontSize: 16),
      bodyText2: TextStyle(color: Colors.white, fontSize: 16),
      subtitle1: TextStyle(color: Colors.white, fontSize: 16),
    ),
    /**
     * ----------------------------- Drawer Theme -------------------------
     */
    drawerTheme: DrawerThemeData(backgroundColor: Colors.black),
    /**
     * -------------------------- Button Theme --------------------------
     */
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.white,
      textTheme: ButtonTextTheme.primary,
    ),
    /***
     * ************************************************************************
     * **************************  Buttons Section ****************************
     * ************************************************************************
     */
    /**
     *  -------------------------- 1 - OutlinedButton --------------------------
     */
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: TextStyle(color: Colors.white),
        primary: AppColors.primaryColor,
        side: BorderSide(color: AppColors.primaryColor, width: 2),
      ),
    ),
    /**
     *  2 - ElevatedButton
     */
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(color: Colors.white),
        primary: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    /**
   *  3 - Text Button
   */
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(color: Colors.white),
        primary: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
/**
 * 4- Floating action button
 */
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      iconSize: 18,
    ),
    /**
     *************************************************************************
     ***************************  TextField Section **************************
     *************************************************************************
     * */
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: AppColors.primaryColor,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.primaryColor)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
    ),
    /**
               * *************************** Cursor Color **********************************
               */
    textSelectionTheme:
        TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    /**
           * ************************* TF prefix - postfix themeing **********************
           */
    iconTheme: IconThemeData(color: AppColors.primaryColor),
  );

  /**
   * ############################# Application light theme property ###########################
   */

  static ThemeData applicationLightTheme = ThemeData.light().copyWith(
    /**
     * -------------------- Scaffold Background Color -----------------------
     */
    scaffoldBackgroundColor: Colors.white,
/**
 * -------------------------- Primary Color --------------------------
 */
    primaryColor: AppColors.primaryColor,
    /**
  * -------------------------- AppBar Theme --------------------------
  */
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryColor),
    /***
     * -------------------------- Prrmary Text Theme --------------------------
     */
    primaryTextTheme: const TextTheme(
      button: TextStyle(color: Colors.black, fontSize: 18),
      headline1: TextStyle(color: Colors.black, fontSize: 72),
      headline2: TextStyle(color: Colors.black, fontSize: 56),
      headline3: TextStyle(color: Colors.black, fontSize: 48),
      headline4: TextStyle(color: Colors.black, fontSize: 32),
      headline5: TextStyle(color: Colors.black, fontSize: 24),
      headline6: TextStyle(color: Colors.black, fontSize: 16),
      bodyText2: TextStyle(color: Colors.black, fontSize: 16),
      subtitle1: TextStyle(color: Colors.black, fontSize: 16),
    ),
    /**
     * ----------------------------- Drawer Theme -------------------------
     */
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
    /**
     * -------------------------- Button Theme --------------------------
     */
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black,
      textTheme: ButtonTextTheme.primary,
    ),
    /***
     * ************************************************************************
     * **************************  Buttons Section ****************************
     * ************************************************************************
     */
    /**
     *  -------------------------- 1 - OutlinedButton --------------------------
     */
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: TextStyle(color: Colors.black),
        primary: AppColors.primaryColor,
        side: BorderSide(color: AppColors.primaryColor, width: 2),
      ),
    ),
    /**
     *  2 - ElevatedButton
     */
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(color: Colors.black),
        primary: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    /**
   *  3 - Text Button
   */
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(color: Colors.black),
        primary: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
/**
 * 4- Floating action button
 */
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.black,
      iconSize: 18,
    ),
    /**
     *************************************************************************
     ***************************  TextField Section **************************
     *************************************************************************
     * */
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: AppColors.primaryColor,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.primaryColor)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
    ),
    /**
               * *************************** Cursor Color **********************************
               */
    textSelectionTheme:
        TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    /**
           * ************************* TF prefix - postfix themeing **********************
           */
    iconTheme: IconThemeData(color: AppColors.primaryColor),
    timePickerTheme: TimePickerThemeData(
      dialHandColor: AppColors.primaryColor,
      backgroundColor: Colors.white,
      hourMinuteTextColor: Colors.black,
      entryModeIconColor: Colors.black,
      hourMinuteColor: AppColors.primaryColor.withOpacity(.2),
      dayPeriodColor: AppColors.primaryColor.withOpacity(.2),
    ),
  );
}
