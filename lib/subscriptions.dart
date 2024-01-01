import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/payment.dart';

import 'model class.dart';

class subs extends StatefulWidget {
  const subs({super.key});

  @override
  State<subs> createState() => _SubsState();
}

class _SubsState extends State<subs> {
  final List<bool> _selectedItems = List.generate(subsr.length, (index) => false);
  bool isAnyItemSelected() {
    return _selectedItems.contains(true);
  }

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
          "Choose Your \nSubscription",
          style: GoogleFonts.aBeeZee(),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 9.0, left: 0),
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.account_circle,
                          size: 30,
                          color: Colors.grey.shade700,
                        )),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemCount: subsr.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    // Update the selected status of the tapped item
                    _selectedItems[index] = !_selectedItems[index];
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 15),
                  child: Container(
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 2,
                          color: _selectedItems[index]
                              ? Colors.orange
                              : Colors.grey,
                        )),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                subsr[index].main,
                                style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Radio(
                              activeColor: Colors.orange,
                              value:
                                  index, // Use the index as the value for each item
                              groupValue: _selectedItems.indexOf(true),
                              onChanged: (value) {
                                setState(() {
                                  _selectedItems[index] =
                                      !_selectedItems[index];
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(subsr[index].sub),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                    fixedSize: const Size(380, 50)),
                onPressed: isAnyItemSelected()
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const cards(),
                            ));
                      }
                    : null,
                child: Text(
                  "Continue",
                  style: GoogleFonts.aBeeZee(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
