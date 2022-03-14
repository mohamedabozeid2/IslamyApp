import 'package:flutter/material.dart';
import 'package:islamy_app/home.dart';
import 'package:islamy_app/modules/ahadeth/HadethDetails.dart';
import 'package:islamy_app/modules/quran/SuraDetails.dart';
import 'package:islamy_app/styles/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: darkMode==true?ThemeMode.dark:ThemeMode.light,
      routes: {
        HomePage.ROUTE_NAME:(context)=>HomePage(),
        SuraDetails.ROUTE_NAME:(context) => SuraDetails(),
        HadethDetails.HADETH_ROUTE:(context) => HadethDetails(),
      },
      initialRoute: HomePage.ROUTE_NAME,
      // home: Scaffold(),
    );
  }
}
