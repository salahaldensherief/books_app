import 'package:books_app/core/services/get_it_service.dart';
import 'package:books_app/features/auth/domain/repos/auth_repo.dart';
import 'package:books_app/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:books_app/features/auth/presentation/views/widgets/log_In_view_body.dart';
import 'package:books_app/features/auth/presentation/views/widgets/login_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'loginview';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt<AuthRepo>()),
      child: LogInViewBodyBlocConsumer(),
    );
  }
}

