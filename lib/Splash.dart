import 'dart:async';
import 'package:flutter/material.dart';
import 'package:movie_app/logsign.dart';
import 'package:movie_app/navbar.dart';
import 'package:movie_app/theme%20manager.dart';
import 'package:shared_preferences/shared_preferences.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> with TickerProviderStateMixin {
  @override
  final bool _switchValue = false;
  @override
  void initState() {
    super.initState();
    checkFirstTime();
    _loadSwitchValue();
    _applyThemeMode(_switchValue);
  }

  Future<void> _loadSwitchValue() async {
    await ThemeManager.applyTheme(_switchValue);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool switchValue = await ThemeManager.loadSwitchValue();
    _applyThemeMode(switchValue);
  }

  Future<void> _applyThemeMode(bool switchValue) async {
    await ThemeManager.applyTheme(switchValue);
  }

  void checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      // If it's the first time, show logsign page
      Timer(
          const Duration(
            seconds: 3,
          ), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              // Set the flag to false after showing logsign page
              return const logsign();
            },
          ),
        );
      });
    } else {
      // If it's not the first time, go directly to the home page
      Timer(
          const Duration(
            seconds: 3,
          ), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              // Set the flag to false after showing logsign page
              return navbar();
            }, // Replace 'Home()' with your home page class
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Center(
        child: Image.asset(
          "images/starg.gif",
          width: 250,
        ),
      ),
    );
  }
}
