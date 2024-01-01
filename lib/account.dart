
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/bonus.dart';
import 'package:movie_app/eprofile.dart';
import 'package:movie_app/logsign.dart';
import 'package:movie_app/subscriptions.dart';
import 'package:movie_app/theme%20manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'downloads.dart';
import 'notifications.dart';

class account extends StatefulWidget {
  final Function(int) updateIndex;
  const account({
    super.key,
    required this.updateIndex,
  });

  @override
  State<account> createState() => _accountState();
}

Future<void> _saveSwitchValue(bool value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('darkModeSwitch', value);

  // Save the theme mode based on the switch value
  ThemeMode themeMode = value ? ThemeMode.dark : ThemeMode.light;
  prefs.setString('themeMode', themeMode.toString());
}

class _accountState extends State<account> {
  @override
  void initState() {
    super.initState();
    _loadSwitchValue();
  }

  Future<void> _loadSwitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool switchValue = await ThemeManager.loadSwitchValue();
    _applyThemeMode(switchValue);
  }

  Future<void> _applyThemeMode(bool switchValue) async {
    await ThemeManager.applyTheme(switchValue);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    ThemeMode themeMode = switchValue ? ThemeMode.dark : ThemeMode.light;
    Get.changeThemeMode(themeMode);
    prefs.setString('themeMode', themeMode.toString());
    setState(() {
      _switchValue = switchValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              widget.updateIndex(0);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
          title: Text(
            "Account",
            style: GoogleFonts.aBeeZee(),
          ),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 38, bottom: 20),
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(100)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.person_outline,
                      size: 150,
                      color: Colors.orangeAccent,
                    ),
                  )),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const pro(),
                  ));
            },
            child: ListTile(
              leading: const Icon(
                Icons.account_circle,
              ),
              title: Text("Edit Profile", style: GoogleFonts.aBeeZee()),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.deepOrange)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const notification(),
                  ));
            },
            child: ListTile(
              leading: const Icon(
                Icons.notifications_none,
              ),
              title: Text("Notification", style: GoogleFonts.aBeeZee()),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.deepOrange)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const down(),
                  ));
            },
            child: ListTile(
              leading: const Icon(
                Icons.download,
              ),
              title: Text("Downloads", style: GoogleFonts.aBeeZee()),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.deepOrange)),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.updateIndex(2);
            },
            child: ListTile(
              leading: const Icon(
                Icons.favorite_border,
              ),
              title: Text("Favorite", style: GoogleFonts.aBeeZee()),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.deepOrange)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const subs(),
                  ));
            },
            child: ListTile(
              leading: const Icon(
                Icons.subscriptions_outlined,
              ),
              title: Text("My Subscriptions", style: GoogleFonts.aBeeZee()),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.deepOrange)),
            ),
          ),
          GestureDetector(
            onTap: () {
              final snackBar = SnackBar(
                /// need to set following properties for best effect of awesome_snackbar_content
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                content: AwesomeSnackbarContent(
                  title: '',
                  message: 'You need to log in first!', messageFontSize: 18,
                  inMaterialBanner: true,

                  /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                  contentType: ContentType.warning,
                ),
              );

              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            },
            child: ListTile(
              leading: const Icon(
                Icons.credit_card_rounded,
              ),
              title: Text("Cards", style: GoogleFonts.aBeeZee()),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.deepOrange)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const bonus(),
                  ));
            },
            child: ListTile(
              leading: const Icon(
                Icons.download_for_offline_outlined,
              ),
              title: Text("Bonuses", style: GoogleFonts.aBeeZee()),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.deepOrange)),
            ),
          ),
          ListTile(
              leading: const RotationTransition(
                  turns: AlwaysStoppedAnimation(-50 / 360),
                  child: Icon(
                    Icons.nightlight_outlined,
                  )),
              title: Text("Dark Mode", style: GoogleFonts.aBeeZee()),
              trailing: CupertinoSwitch(
                activeColor: Colors.deepOrange,
                trackColor: Colors.grey,
                thumbColor: Colors.black,
                value: _switchValue,
                onChanged: (value) {
                  _applyThemeMode(value);
                  _saveSwitchValue(value);
                  Get.changeThemeMode(
                    Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                  );
                  return setState(() {
                    _switchValue = value;
                  });
                  _saveSwitchValue(value);
                },
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.deepOrange)),
            ),
          ),
          GestureDetector(
            onTap: () {
              _showBottomSheet(context);
            },
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: Text("Logout", style: GoogleFonts.aBeeZee()),
              trailing:
                  const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            ),
          ),
        ]),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Are You Sure You Want To Exit ?',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      onPressed: () {
                        Navigator.pop(context); // Close the bottom sheet
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Close',
                            style: GoogleFonts.aBeeZee(color: Colors.black)),
                      ),
                    ),
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setBool('isFirstTime', true);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const logsign(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Yes',
                            style: GoogleFonts.aBeeZee(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

bool _switchValue = false;
