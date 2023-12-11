import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 08.h,
        width: 90.w,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(05.w),
        ),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.aBeeZee(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 23.sp),
        )),
      ),
    );
  }
}
