import 'package:books_app/features/auth/presentation/views/login_view.dart';
import 'package:books_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
      case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
      case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case HomeView.routeName :
      return MaterialPageRoute(builder: (context) => HomeView(),);

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }

}