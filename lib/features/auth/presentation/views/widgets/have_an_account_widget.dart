import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
        text: 'have an account ?',
        style: TextStyle(color: Colors.white) ,

      ),

          TextSpan(
            text: ' ',

          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: 'Login',
            style:
            TextStyle(color: Colors.blue) ,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
