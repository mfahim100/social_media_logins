import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/const_decorations.dart';
import '../../core/constants/cont_text_styles.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import 'log_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: ConstDecoration.mainDecoration,
          child: Center(
            child: Container(
              height: 65.h,
              width: 95.w,
              decoration: ConstDecoration.mainContainerDecoration,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(08.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:
                      Text('Sign Up', style: ConstTextStyles.mainTextStyle),
                    ),
                  ),
                  CustomTextField(
                    hintText: 'Enter Your Name',
                    labelText: 'Name',
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomTextField(
                    hintText: 'Enter Your Email',
                    labelText: 'Email',
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomTextField(
                    obscureText: true,
                    hintText: 'Enter Your Password',
                    labelText: 'Password',
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomButton(onPressed: () {}, text: 'Sign Up'),

                  Padding(
                    padding:EdgeInsets.only(left: 25.w),
                    child: Row(
                      children: [
                        const Text('Already Have Account'),
                        TextButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                            return const LoginScreen();
                          }));
                        }, child: const Text('Sign IN'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
