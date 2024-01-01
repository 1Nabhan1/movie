import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _SearchState();
}

class _SearchState extends State<search> {
  late TextEditingController _searchController;
  late FocusNode _searchFocusNode;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _onCancelPressed() {
    _searchFocusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: CupertinoSearchTextField(
                      controller: _searchController,
                      style: GoogleFonts.aBeeZee(color:Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Icon(Icons.search, ),
                      ),
                      focusNode: _searchFocusNode,
                      autofocus: true,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: _onCancelPressed,
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.aBeeZee(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
