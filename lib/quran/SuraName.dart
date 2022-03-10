import 'package:flutter/material.dart';

class SuraName extends StatelessWidget {
  String suraName;

  SuraName({
    required this.suraName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        suraName,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
