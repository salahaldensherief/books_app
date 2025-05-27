import 'package:books_app/features/auth/domain/repos/auth_repo.dart';
import 'package:books_app/features/auth/presentation/cubits/sign_up_cubit/signup_cubit.dart';
import 'package:books_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignUpViewBody());
  }
}
