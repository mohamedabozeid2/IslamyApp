import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/styles/themes.dart';

class SebhaPage extends StatefulWidget {

  @override
  State<SebhaPage> createState() => _SebhaPageState();
}

class _SebhaPageState extends State<SebhaPage> {
  int counter = 0;
  int index = 0;
  List<String> tspeh = [
    'سبحان الله',
    'الله اكبر',
    'الحمد لله',
    'لا اله الا الله',
    'استغفر الله',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: InkWell(
              onTap: (){
                counter++;
                if(counter == 30){
                  index++;
                  counter = 0;
                  if(index == tspeh.length-1){
                    index = 0;
                  }
                }
                setState(() {

                });
              },
              child: const Image(
                image: AssetImage(
                  'assets/images/body_sebha_logo.png'
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: const Text(
                "عدد التسبيحات",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyThemeData.primaryColor,
            ),
            padding: const EdgeInsets.all(18),
            child: Text(
              "$counter",
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: MyThemeData.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              tspeh[index],
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
