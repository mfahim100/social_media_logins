import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:social_media_logins/UI/screens/sign_up_screen.dart';
import 'package:social_media_logins/UI/widgets/custom_button.dart';
import 'package:social_media_logins/UI/widgets/custom_textfield.dart';
import 'package:social_media_logins/UI/widgets/social_media_button.dart';
import 'package:social_media_logins/core/constants/const_decorations.dart';
import 'package:social_media_logins/core/constants/cont_text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              height: 80.h,
              width: 95.w,
              decoration: ConstDecoration.mainContainerDecoration,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(08.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child:
                          Text('Sign In', style: ConstTextStyles.mainTextStyle),
                    ),
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
                  CustomButton(onPressed: () {}, text: 'Sign In'),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: Row(
                      children: [
                        const Text('Not Register Yet'),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (builder) {
                                return const SignUpScreen();
                              }));
                            },
                            child: const Text('Sign UP'))
                      ],
                    ),
                  ),
                  SocialMediaButton(
                    text: 'Continue With Google',
                    imgLink: 'assets/images/google_logo.png',
                    onPressed: () {},
                  ),

                  SizedBox(
                    height: 3.h,
                  ),

                  SocialMediaButton(
                    text: 'Continue With FaceBook',
                    imgLink: 'assets/images/facebook_logo.png',
                    onPressed: () {},
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
