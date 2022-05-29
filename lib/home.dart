import 'package:flutter/material.dart';
import 'package:islamy_app/generated/l10n.dart';
import 'package:islamy_app/styles/themes.dart';

import 'modules/Settings/SettingsScreen.dart';
import 'modules/ahadeth/ahadeth.dart';
import 'modules/quran/quran.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'modules/radio/radio.dart';
import 'modules/sebha/sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavItems = [
      BottomNavigationBarItem(
          icon: const ImageIcon(AssetImage('assets/images/icon_quran.png')),
          label: AppLocalizations.of(context)!.quran),
      BottomNavigationBarItem(
          icon: const ImageIcon(AssetImage('assets/images/icon_sebha.png')),
          label: AppLocalizations.of(context)!.sebha),
      BottomNavigationBarItem(
          icon: const ImageIcon(AssetImage('assets/images/icon_radio.png')),
          label: AppLocalizations.of(context)!.radio),
      BottomNavigationBarItem(
          icon: const ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
          label: AppLocalizations.of(context)!.hadeth),
      BottomNavigationBarItem(
          icon: const Icon(Icons.settings),
          label:AppLocalizations.of(context)!.settings),
    ];
    final drawerController = AdvancedDrawerController();
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
          // leading: IconButton(
          //   onPressed: () {
          //     drawerController.showDrawer();
          //   },
          //   icon: ValueListenableBuilder<AdvancedDrawerValue>(
          //     valueListenable: drawerController,
          //     builder: (_, value, __) {
          //       return AnimatedSwitcher(
          //         duration: Duration(microseconds: 250),
          //         child: Icon(
          //           value.visible ? Icons.clear : Icons.menu,
          //           key: ValueKey<bool>(value.visible),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            AppLocalizations.of(context)!.islamy,
            style: TextStyle(
              // color: Colors.black,
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
