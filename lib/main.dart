import 'package:flutter/material.dart';
import 'package:islamy_app/home.dart';

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
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.blue,

        ),
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.ROUTE_NAME:(context)=>HomePage(),

      },
      initialRoute: HomePage.ROUTE_NAME,
      // home: Scaffold(),
    );
  }
}
