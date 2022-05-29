import 'package:flutter/material.dart';
import 'package:islamy_app/styles/themes.dart';
import 'package:islamy_app/modules/Settings/cubit/cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatefulWidget {

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.mode,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 22
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          darkMode==true?AppLocalizations.of(context)!.dark_mode:AppLocalizations.of(context)!.light_mode,
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 22
                          ),
                        ),
                      ),
                      onTap: (){
                        IslamyCubit.get(context).changeMode();
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.language,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 22
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          IslamyCubit.get(context).language=='en'?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic,
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 22
                          ),
                        ),
                      ),
                      onTap: (){
                        IslamyCubit.get(context).changeLanguage();
                      },
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
