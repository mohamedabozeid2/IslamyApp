import 'package:flutter/material.dart';
import 'package:islamy_app/modules/quran/SuraDetails.dart';
import 'package:islamy_app/styles/themes.dart';

class SuraName extends StatelessWidget {
  String suraName;
  int index;
  int ayatNumbers;
  String suraNameInEnglish;

  SuraName({
    required this.suraName,
    required this.index,
    required this.ayatNumbers,
    required this.suraNameInEnglish
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.ROUTE_NAME,
            arguments: suraArguments(index: index, suraName: suraName));
      },
      child: Row(
        children: [
          const SizedBox(
            width: 12,
          ),
          Text(
            "{ ${index+1} }",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text("${suraNameInEnglish}",
              style: Theme.of(context).textTheme.bodyText1,),
              Text("${ayatNumbers}",
              style: Theme.of(context).textTheme.bodyText1,)
            ],
          ),
          const Spacer(),
          Text(
            suraName,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: darkMode == true ? Colors.white : Colors.black),
          ),
          const SizedBox(
            width: 12,
          )
        ],
      ),
    );
  }
}

class suraArguments {
  int index;

  String suraName;

  suraArguments({required this.index, required this.suraName});
}
