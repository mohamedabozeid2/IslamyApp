import 'package:flutter/material.dart';
import 'package:islamy_app/modules/ahadeth/HadethDetails.dart';
import 'package:islamy_app/styles/themes.dart';

class HadethName extends StatelessWidget {
  String singleHadethName;
  String singleHadethContent;

  HadethName({
    required this.singleHadethName,
    required this.singleHadethContent,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.HADETH_ROUTE, arguments: HadethArguments(
            hadethTitle: singleHadethName,
            hadethContent: singleHadethContent
        ));

      },
      child: Text(
          singleHadethName,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: darkMode==true?Colors.white:Colors.black
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class HadethArguments{
  String hadethTitle;
  String hadethContent;

  HadethArguments({
    required this.hadethTitle,
    required this.hadethContent,
});
}