import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:movie_app/Splash.dart';
import 'package:movie_app/tst.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await GetStorage.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LikedItemsModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  static const Color deepBlueColor = Color(0xFF020021);
  const MyApp({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ThemeMode>(
      future: _getThemeMode(),
      builder: (context, snapshot) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(focusColor: Colors.black,
            scaffoldBackgroundColor: Colors.grey.shade300,
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
                TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
              },
            ),
          ),
          darkTheme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: deepBlueColor,
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
                TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
              },
            ),
          ),
          builder: (context, child) {
            return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
              child: child!,
            );
          },
          themeMode: snapshot.data ?? ThemeMode.light,
          home: splash(),
        );
      },
    );
  }

  Future<ThemeMode> _getThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return (prefs.getString('themeMode') ?? 'light') == 'dark'
        ? ThemeMode.dark
        : ThemeMode.light;
  }
}

class LikedItemsModel extends ChangeNotifier {
  List<LikedItem> likedItems = [];

  void toggleLike(String itemName, String itemImage) {
    final existingItem = likedItems.firstWhere(
      (item) => item.name == itemName,
      orElse: () => LikedItem(name: itemName, image: itemImage),
    );

    if (likedItems.contains(existingItem)) {
      likedItems.remove(existingItem);
    } else {
      likedItems.add(existingItem);
    }
    notifyListeners();
  }
}

class LikedItem {
  final String name;
  final String image;

  LikedItem({
    required this.name,
    required this.image,
  });
}
