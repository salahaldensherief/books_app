import 'package:books_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
static const routeName = 'splahview';
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
    
      body: SplashViewbody(),
    );
  }
}
