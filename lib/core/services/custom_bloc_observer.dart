import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CustomBlocObserver extends BlocObserver{
@override
  void onChange(BlocBase bloc , Change change){
    super.onChange(bloc, change);
    if(kDebugMode){
      debugPrint('${bloc.runtimeType} $change');
    }
  }
}



