import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamy_app/home.dart';
import 'package:islamy_app/modules/Settings/cubit/cubit.dart';
import 'package:islamy_app/modules/Settings/states/states.dart';
import 'package:islamy_app/modules/ahadeth/HadethDetails.dart';
import 'package:islamy_app/modules/quran/SuraDetails.dart';
import 'package:islamy_app/shared/components/constants.dart';
import 'package:islamy_app/shared/network/local/cache_helper.dart';
import 'package:islamy_app/styles/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  isDark = CacheHelper.getData(key: 'isDark');

  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {

  final dynamic isDark;
  MyApp(this.isDark);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => IslamyCubit()..changeMode(fromShared: isDark),
      child: BlocConsumer<IslamyCubit, IslamyStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale('en'),
              Locale('ar'),
            ],
            theme: lightTheme,
            locale: Locale(IslamyCubit.get(context).language),
            darkTheme: darkTheme,
            themeMode: darkMode==true?ThemeMode.dark:ThemeMode.light,
            routes: {
              HomePage.ROUTE_NAME:(context)=>HomePage(),
              SuraDetails.ROUTE_NAME:(context) => SuraDetails(),
              HadethDetails.HADETH_ROUTE:(context) => HadethDetails(),
            },
            initialRoute: HomePage.ROUTE_NAME,
            // home: Scaffold(),
          );
        },
      ),
    );
  }
}
