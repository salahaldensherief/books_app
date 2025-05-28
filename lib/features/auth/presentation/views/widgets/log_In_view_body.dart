import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_text_bottom.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:books_app/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String email,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetsData.logo, width: 200),

                  SizedBox(height: 70),
                  CustomTextFormField(
                    onSaved: (value){
                      email = value!;
                    },
                    hintText: 'Email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    onSaved: (value){
                      password = value!;
                    },
                    hintText: 'Password',
                    textInputType: TextInputType.emailAddress,
                  ),

                  SizedBox(height: 20),
                  CustomTextBottom(onPressed: () {
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                      context.read<LoginCubit>().logInUserWithEmailAndPassword(email, password);
                    }else{
                      autovalidateMode = AutovalidateMode.always;
                    }
                  }, text: 'Login'),
                  SizedBox(height: 10),
                  DontHaveAnAccountWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
