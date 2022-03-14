import 'package:flutter/material.dart';
import 'package:islamy_app/modules/quran/SuraDetails.dart';
import 'package:islamy_app/styles/themes.dart';

class SuraName extends StatelessWidget {
  String suraName;
  int index;

  SuraName({
    required this.suraName,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print(index);
        Navigator.pushNamed(context, SuraDetails.ROUTE_NAME,arguments: suraArguments(index: index, suraName: suraName));
      },
      child: Text(
        suraName,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold,
            color: darkMode==true?Colors.white:Colors.black
        ),
      ),
    );
  }


}
class suraArguments{
  int index ;
  String suraName;

  suraArguments({required this.index, required this.suraName});
}
