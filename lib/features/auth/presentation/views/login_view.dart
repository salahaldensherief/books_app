import 'package:books_app/features/auth/presentation/views/widgets/log_In_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const routeName = 'loginview';
  @override
  Widget build(BuildContext context) {
    return LogInViewBody();
  }
}
