import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/navbar.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
            )),
        title: Text(
          "Sign Up",
          style: GoogleFonts.aBeeZee(),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
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
                style: GoogleFonts.aBeeZee(),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome!",
                  style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ],
            ),
            Text(
              "Create your account",
              style: GoogleFonts.aBeeZee(),
            ),
            const SizedBox(height: 40),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: Row(
                children: [
                  Text("Full Name", style: GoogleFonts.aBeeZee()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                style: const TextStyle(),
                decoration: InputDecoration(
                    hintText: "Enter your name here",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  BorderSide(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                             BorderSide(color: isDarkMode ? Colors.white : Colors.black, width: 2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 8, top: 15),
              child: Row(
                children: [
                  Text("E-mail", style: GoogleFonts.aBeeZee()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Enter your E-mail",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  BorderSide(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: isDarkMode ? Colors.white : Colors.black,
                            width: 2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 8, top: 15),
              child: Row(
                children: [
                  Text("Phone", style: GoogleFonts.aBeeZee()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Enter your number",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  BorderSide(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                             BorderSide(color: isDarkMode ? Colors.white : Colors.black, width: 2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 8, top: 15),
              child: Row(
                children: [
                  Text("Password", style: GoogleFonts.aBeeZee()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                obscureText: passwordVisible,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:  BorderSide(
                          color: isDarkMode ? Colors.white : Colors.black,
                        )),
                    hintText: "Enter Your Password",
                    hintStyle: GoogleFonts.aBeeZee(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(
                          color: isDarkMode ? Colors.white : Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                      fixedSize: const Size(380, 50)),
                  onPressed: () {
                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.loading,
                      title: 'Loading',
                      text: 'Fetching your data',
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.aBeeZee(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
