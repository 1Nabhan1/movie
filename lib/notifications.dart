import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
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
            "Notifications",
            style: GoogleFonts.aBeeZee(),
          ),
          centerTitle: true),
      body: Center(
          child: Text(
        "No Notifications Yet",
        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
      )),
    );
  }
}
