import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bonus extends StatefulWidget {
  const bonus({super.key});

  @override
  State<bonus> createState() => _bonusState();
}

class _bonusState extends State<bonus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
          title: Text(
            "Bonuses",
            style: GoogleFonts.aBeeZee(),
          ),
          centerTitle: true),
      body: Center(
          child: Text(
        "You Don't Have Subscription",
        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
      )),
    );
  }
}
