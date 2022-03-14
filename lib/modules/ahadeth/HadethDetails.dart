import 'package:flutter/material.dart';
import 'package:islamy_app/modules/ahadeth/HadethName.dart';
import 'package:islamy_app/styles/themes.dart';

class HadethDetails extends StatelessWidget {
  static String HADETH_ROUTE = "Hadeth Details";

  @override
  Widget build(BuildContext context) {
    HadethArguments argument = ModalRoute.of(context)!.settings.arguments as HadethArguments;
    String hadethBody = argument.hadethContent;
    List<String> hadethBodyList = hadethBody.split('\n');
    hadethBodyList.removeAt(0);
    hadethBody = hadethBodyList.join();

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            darkMode==true?'assets/images/dark_bg.png':'assets/images/default_bg.png'
          )
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: darkMode==true?Colors.white:Colors.black
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
              argument.hadethTitle,
            style: TextStyle(
              color: darkMode==true?Colors.white:Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
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
                    hadethBody,
                    style: TextStyle(
                      color: darkMode==true?Colors.white:Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
