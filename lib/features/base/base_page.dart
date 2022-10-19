import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:prosonic/features/home/home_page.dart';
import 'package:prosonic/features/settings/settings_page.dart';

import '../../core/constant/constant.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  static const path = "/base";

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int selectedPos = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Hero(
          tag: AppConstant.splashIconHero,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: null,
                icon: Image.asset(
                  "assets/images/p.png",
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.bag,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        snakeShape: SnakeShape.indicator,
        showSelectedLabels: true,
        unselectedItemColor: AppConstant.white,
        selectedItemColor: AppConstant.white,
        backgroundColor: AppConstant.gray,
        snakeViewColor: AppConstant.red.withAlpha(120),
        currentIndex: selectedPos,
        onTap: (index) => setState(() => selectedPos = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.musical_notes), label: 'Tracks'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.albums), label: 'Packages'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.shield_checkmark), label: 'Services'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.settings), label: 'Profile')
        ],
      ),
      body: _pages[selectedPos],
    );
  }
}
