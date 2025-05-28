import 'package:books_app/features/auth/presentation/cubits/sign_up_cubit/signup_cubit.dart';
import 'package:books_app/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_text_bottom.dart';
import 'custom_text_form_field.dart';
import 'dont_have_an_account_widget.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, name, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formkey,
              autovalidateMode: autovalidateMode,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetsData.logo, width: 200),

                  SizedBox(height: 70),
                  CustomTextFormField(
                    onSaved: (value) {
                      name = value!;
                    },
                    hintText: 'Name',
                    textInputType: TextInputType.name,
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    onSaved: (value) {
                      email = value!;
                    },
                    hintText: 'Email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),

                  CustomTextFormField(
                    onSaved: (value) {
                      password = value!;
                    },
                    hintText: 'Password',
                    textInputType: TextInputType.emailAddress,
                  ),

                  SizedBox(height: 20),
                  CustomTextBottom(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        context
                            .read<SignupCubit>()
                            .createUserWithEmailAndPassword(
                              email,
                              password,
                              name,
                            );
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                    text: 'SignUp',
                  ),
                  SizedBox(height: 10),
                  HaveAnAccountWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
