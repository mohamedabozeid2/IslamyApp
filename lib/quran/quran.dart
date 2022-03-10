import 'package:flutter/material.dart';
import 'package:islamy_app/quran/SuraName.dart';
import 'package:islamy_app/styles/themes.dart';

class QuranPage extends StatelessWidget {

  List<String> suraNamesList = [
  "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: const Image(image: AssetImage('assets/images/quran_logo.png')),
        ),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 3.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            "Sura Name",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 3.0,
        ),
        Expanded(
          flex: 7,
            child: ListView.separated(

                itemBuilder: (context, index) => SuraName(suraName: suraNamesList[index]),
                separatorBuilder: (context, index){
                  return Divider(
                    color: MyThemeData.primaryColor,
                    thickness: 0.5,
                  );
                },
                itemCount: suraNamesList.length))
      ],
    );
  }

  Widget itemBuilder(){
    return Text(
      "البقرة"
    );
  }
}
