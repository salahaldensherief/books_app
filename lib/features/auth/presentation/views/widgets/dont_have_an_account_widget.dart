// Flutter imports:
import 'package:books_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Dont have an account ?',
            style: TextStyle(color: Colors.white) ,

          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap= (){
              Navigator.pushNamed(context,SignUpView.routeName );
            },
            text: 'SignUp',
            style: TextStyle(color: Colors.blue)
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
