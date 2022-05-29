import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamy_app/modules/Settings/states/states.dart';
import 'package:islamy_app/styles/themes.dart';

class IslamyCubit extends Cubit<IslamyStates>{
  IslamyCubit() : super(IslamyInitialState());

  static IslamyCubit get(context) => BlocProvider.of(context);

  String language = 'en';

  void changeLanguage(){
    if(language == 'en'){
      language = 'ar';
    }else{
      language = 'en';
    }
    emit(IslamyChangeLanguageState());
  }

  void changeMode(){
    darkMode = !darkMode;
    emit(IslamyChangeModeState());
  }

}