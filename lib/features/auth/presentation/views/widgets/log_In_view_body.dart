import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_text_bottom.dart';
import 'package:books_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:books_app/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:flutter/material.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsData.logo,width: 200,),

                SizedBox(height: 70,),
                CustomTextFormField(
                  hintText: 'Email',
                  textInputType: TextInputType.emailAddress,

                ),
                SizedBox(height: 20,),
                CustomTextFormField(
                  hintText: 'Password',
                  textInputType: TextInputType.emailAddress,

                ),

                SizedBox(height: 20,),
                CustomTextBottom(
                    onPressed: (){},
                    text: 'Login'),
                SizedBox(height: 10,),
                DontHaveAnAccountWidget(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
