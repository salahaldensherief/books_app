import 'package:books_app/core/services/get_it_service.dart';
import 'package:books_app/features/auth/domain/repos/auth_repo.dart';
import 'package:books_app/features/auth/presentation/cubits/sign_up_cubit/signup_cubit.dart';
import 'package:books_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:bloc/bloc.dart';
import 'package:books_app/features/auth/presentation/views/widgets/sign_up_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = 'signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocProvider(
      create: (context) =>
          SignupCubit(
              getIt<AuthRepo>()
          ),
      child: SignUpViewBodyBlocConsumer(),
    ));
  }
}

