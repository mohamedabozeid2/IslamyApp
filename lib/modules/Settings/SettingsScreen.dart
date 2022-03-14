import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/styles/themes.dart';

class SettingsScreen extends StatefulWidget {

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  darkMode = false;
                  setState(() {

                  });
                },
                child: Text(
                  "Light Mode",
                  style: TextStyle(
                    fontSize: 30,
                    color: darkMode==true?Colors.white:Colors.black
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: (){
                  darkMode = true;
                  setState(() {

                  });
                },
                child: Text(
                    "Dark Mode",
                  style: TextStyle(
                      fontSize: 30,
                      color: darkMode==true?Colors.white:Colors.black
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
