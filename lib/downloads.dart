import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class down extends StatefulWidget {
  const down({super.key});

  @override
  State<down> createState() => _downState();
}

class _downState extends State<down> {
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
            "Downloads",
            style: GoogleFonts.aBeeZee(),
          ),
          centerTitle: true),
      body: Center(
          child: Text(
        "No Downloads Yet",
        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
      )),
    );
  }
}
