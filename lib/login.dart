import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/navbar.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
          "Login",
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
        child: Column(children: [
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
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: Row(
              children: [
                Text("E-mail", style: GoogleFonts.aBeeZee()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextFormField(
              style: const TextStyle(),
              decoration: InputDecoration(
                  hintText: "Username@gmail.com",
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
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
                Text("Password", style: GoogleFonts.aBeeZee()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextFormField(
              obscureText: passwordVisible,
              style: const TextStyle(),
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
                      borderSide: BorderSide(
                        color: isDarkMode ? Colors.white : Colors.black,
                      )),
                  hintText: "Enter Your Password",
                  hintStyle: GoogleFonts.aBeeZee(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: isDarkMode ? Colors.white : Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Forgot password?",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
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
                    type: QuickAlertType.error,
                    title: 'Oops...',
                    text: 'Sorry, something went wrong',
                    backgroundColor: Colors.black,
                    titleColor: Colors.white,
                    textColor: Colors.white,
                  );
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(height: 80),
          Text("Or login with", style: GoogleFonts.aBeeZee()),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.deepOrange,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "images/goo.png",
                  color: Colors.deepOrange,
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  "images/app.png",
                  color: Colors.deepOrange,
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  "images/face.png",
                  color: Colors.deepOrange,
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
