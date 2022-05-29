import 'package:flutter/material.dart';

class RadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Image(image: AssetImage('assets/images/quran_logo.png')),
        Divider(),
        Text(
          "اسمع على التلفزيون لحد ما اخلصه",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
