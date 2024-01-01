import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Favvorite.dart';
import 'package:movie_app/search.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'Home.dart';
import 'account.dart';

class HomeController extends GetxController {
  var isDarkMode = false.obs;
}

class navbar extends StatefulWidget {
  navbar({super.key});
  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  int _currentIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  var isDarkMode = false.obs;
  final HomeController _controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      home(updateIndex: updateCurrentIndex),
      const search(),
      Favorite(
        updateIndex: updateCurrentIndex,
        likedItems: const [],
      ),
      account(updateIndex: updateCurrentIndex),
    ];
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: _controller.isDarkMode.value ? Colors.black : null,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
              selectedColor: Colors.blue,
              unselectedColor: Colors.deepOrange),
          SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text('Search'),
              selectedColor: Colors.blue,
              unselectedColor: Colors.deepOrange),
          SalomonBottomBarItem(
              icon: const Icon(Icons.favorite),
              title: const Text("Favorite"),
              selectedColor: Colors.blue,
              unselectedColor: Colors.deepOrange),
          SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Profile'),
              selectedColor: Colors.blue,
              unselectedColor: Colors.deepOrange),
        ],
      ),
    );
  }
}
