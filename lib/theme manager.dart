import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeManager {
  static Future<void> applyTheme(bool isDark) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    ThemeMode themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    Get.changeThemeMode(themeMode);
    prefs.setString('themeMode', themeMode.toString());
  }

  static Future<void> saveSwitchValue(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkModeSwitch', value);
  }

  static Future<bool> loadSwitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('darkModeSwitch') ?? false;
  }
}
