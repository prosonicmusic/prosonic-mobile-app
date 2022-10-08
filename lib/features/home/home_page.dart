import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:prosonic/core/constant/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const path = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPos = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Hero(
          tag: AppConstant.splashIconHero,
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
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppConstant.black,
        color: AppConstant.gray,
        animationDuration: const Duration(milliseconds: 200),
        animationCurve: Curves.ease,
        buttonBackgroundColor: AppConstant.red,
        height: 67,
        index: 0,
        items: const <Widget>[
          Icon(
            Ionicons.home_outline,
            size: 29,
          ),
          Icon(
            Ionicons.musical_notes,
            size: 29,
          ),
          Icon(
            Ionicons.albums,
            size: 29,
          ),
          Icon(
            Ionicons.shield_checkmark,
            size: 29,
          ),
          Icon(
            Ionicons.settings,
            size: 29,
          ),
        ],
        onTap: (index) {},
      ),
      body: Container(),
    );
  }
}
