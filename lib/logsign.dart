import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/login.dart';
import 'package:movie_app/navbar.dart';
import 'package:movie_app/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class logsign extends StatelessWidget {
  const logsign({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => navbar(),
                        ));
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              )
            ]),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              SafeArea(
                  child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/star.png"),
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 255.0),
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    left: -20,
                    top: 40,
                    child:
                        Image.asset("images/star.png", height: 200, width: 200),
                  ),
                  Positioned(
                      right: 0,
                      left: 130,
                      top: 160,
                      child: Text(
                        "MOVIEFEST",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      left: 20,
                      right: 40,
                      top: 95,
                      child: Image.asset(
                        "images/cam.png",
                        color: Colors.white,
                        height: 60,
                        width: 60,
                      )),
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Text(
                  "Welcome To The Movie App",
                  style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        fixedSize: const Size(380, 50)),
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setBool('isFirstTime', false);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const login(),
                          ));
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(380, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        backgroundColor: Colors.black,
                        side: const BorderSide(color: Colors.orange)),
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setBool('isFirstTime', false);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const signup(),
                          ));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ));
  }
}
