import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class reuse extends StatefulWidget {
  final news;
  final categories;

  const reuse({super.key, this.news, this.categories});

  @override
  State<reuse> createState() => _reuseState();
}

class _reuseState extends State<reuse> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.news, style: GoogleFonts.aBeeZee(fontSize: 18)),
          Text(
            widget.categories,
            style: GoogleFonts.aBeeZee(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
