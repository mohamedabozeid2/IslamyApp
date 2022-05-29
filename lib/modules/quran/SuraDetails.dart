import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/modules/quran/SuraName.dart';
import 'package:islamy_app/styles/themes.dart';

class SuraDetails extends StatefulWidget {
  static String ROUTE_NAME = "Sura Details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  suraArguments? argument;
  String sura = "";

  @override
  Widget build(BuildContext context) {
    argument = ModalRoute.of(context)!.settings.arguments as suraArguments;
    sura == "" ? getSuraContainer() : null;
    sura = sura.trim();

    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                darkMode==true?'assets/images/dark_bg.png':'assets/images/default_bg.png',
              ))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: darkMode==true?Colors.white:Colors.black
          ),
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "سورة ${argument!.suraName}",
            style: TextStyle(
              color: darkMode==true?Colors.white:Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
            backgroundColor: Colors.transparent,
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(20,0,12,20),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container()),
              Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    sura.trim(),
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: darkMode==true?Colors.white:Colors.black
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

  void getSuraContainer()async{
    String suraContainer = await rootBundle.loadString("assets/files/${argument!.index+1}.txt");
    sura += suraContainer;
    setState(() {

    });
  }
}
