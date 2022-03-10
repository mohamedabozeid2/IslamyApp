import 'package:flutter/material.dart';
import 'package:islamy_app/ahadeth/ahadeth.dart';
import 'package:islamy_app/quran/quran.dart';
import 'package:islamy_app/radio/radio.dart';
import 'package:islamy_app/sebha/sebha.dart';
import 'package:islamy_app/styles/themes.dart';

class HomePage extends StatefulWidget {
  static String ROUTE_NAME = 'home';
  List<Widget> bodyWidgets = [
    QuranPage(),
    SebhaPage(),
    RadioPage(),
    AhadethPage(),
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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/default_bg.png",
              ))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: MyThemeData.primaryColor
          ),
          child: BottomNavigationBar(
            onTap: (currentIndex){
              changeBotNavindex(currentIndex);
            },
            showUnselectedLabels: true,
            items: bottomNavItems,
            currentIndex: index,
            selectedItemColor: MyThemeData.accentColor,
          ),
        ),
      ),
    );
  }

  void changeBotNavindex(curretIndex){
    setState(() {
      index = curretIndex;
    });
  }
}
