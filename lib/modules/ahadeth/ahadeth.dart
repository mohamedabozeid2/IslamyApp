import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/modules/ahadeth/HadethName.dart';
import 'package:islamy_app/styles/themes.dart';

class AhadethPage extends StatefulWidget {
  @override
  State<AhadethPage> createState() => _AhadethPageState();
}

class _AhadethPageState extends State<AhadethPage> {
  String ahadethContent = "";
  List<String> singleHadeth = [];
  List<String> hadethNumber = [];

  @override
  Widget build(BuildContext context) {
    if (singleHadeth.isEmpty) {
      getAhadethCotnent().then((value) {
        getHadethNumber();
      });
    }

    // singleHadeth = ahadethContent.split("#");
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
              image: AssetImage(
            'assets/images/hadeth_logo.png',
          )),
          Divider(
            color: darkMode==true?const Color(0xffFACC1D):MyThemeData.primaryColor,
            thickness: 3.0,
          ),
          Text(
            'الأحاديث',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: darkMode == true ? Colors.white : Colors.black),
          ),
          Divider(
            color: darkMode==true?const Color(0xffFACC1D):MyThemeData.primaryColor,
            thickness: 3.0,
          ),
          ConditionalBuilder(
            condition: hadethNames.isNotEmpty,
            builder: (context) => Expanded(
              child: Theme(
                data: Theme.of(context).copyWith(
                    scrollbarTheme: ScrollbarThemeData(
                        thumbColor:
                            MaterialStateProperty.all(MyThemeData.primaryColor),
                        crossAxisMargin: 5)),
                child: Scrollbar(
                  thickness: 8,
                  interactive: false,
                  showTrackOnHover: true,
                  radius: const Radius.circular(15),
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => HadethName(
                      singleHadethName: hadethNames[index],
                      singleHadethContent: singleHadeth[index],
                    ),
                    separatorBuilder: (context, index) => Divider(
                      endIndent: 15,
                      indent: 15,
                      thickness: 1,
                      color: darkMode==true?const Color(0xffFACC1D):MyThemeData.primaryColor,
                    ),
                    itemCount: hadethNames.length,
                  ),
                ),
              ),
            ),
            fallback: (context) => Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }

  Future getAhadethCotnent() async {
    ahadethContent = await rootBundle.loadString("assets/files/ahadeth.txt");
    singleHadeth = ahadethContent.split("#");
  }

  List<String> hadethNames = [];

  String workOnIt = "";

  List<String> workOnItList = [];

  void getHadethNumber() {
    for (int i = 0; i < singleHadeth.length - 1; i++) {
      workOnIt = singleHadeth[i].trim();
      workOnItList = workOnIt.split('\n');
      hadethNames.add(workOnItList[0]);
      workOnItList = [];
      workOnIt = "";
      setState(() {});
    }
  }
}
