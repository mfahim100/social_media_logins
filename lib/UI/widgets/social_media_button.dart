import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SocialMediaButton extends StatelessWidget {
  final String text, imgLink;
  final Function() onPressed;

  const SocialMediaButton({
    super.key,
    required this.text,
    required this.imgLink,
    required this.onPressed,
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
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 3.5.w,
            ),
            CircleAvatar(
              radius: 07.w,
              child:  Image(
                fit: BoxFit.cover,
                image: AssetImage(imgLink),
              ),
            ),
            SizedBox(
              width: 3.5.w,
            ),
            Text(
              text,
              style: GoogleFonts.aBeeZee(
                  fontSize: 18.sp, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
