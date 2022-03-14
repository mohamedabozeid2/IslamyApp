import 'package:flutter/material.dart';
import 'package:islamy_app/styles/themes.dart';

import 'modules/Settings/SettingsScreen.dart';
import 'modules/ahadeth/ahadeth.dart';
import 'modules/quran/quran.dart';
import 'modules/radio/radio.dart';
import 'modules/sebha/sebha.dart';

class HomePage extends StatefulWidget {
  static String ROUTE_NAME = 'home';
  List<Widget> bodyWidgets = [
    QuranPage(),
    SebhaPage(),
    RadioPage(),
    AhadethPage(),
    SettingsScreen(),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
        label: 'Quran'),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
        label: 'Sebha'),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
        label: 'Radio'),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
        label: 'Ahadith'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: darkMode == false
          ? const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/default_bg.png",
                  )))
          : const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/dark_bg.png",
                  ))),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Islamy",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        body: widget.bodyWidgets[index],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (currentIndex) {
            changeBotNavindex(currentIndex);
          },
          items: bottomNavItems,
          currentIndex: index,
        ),
      ),
    );
  }

  void changeBotNavindex(curretIndex) {
    setState(() {
      index = curretIndex;
    });
  }
}
