import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ConstDecoration{

  static var mainDecoration = BoxDecoration(
    gradient: const LinearGradient(
        colors: [
          Color(0xffffe6ff),
          Color(0xffff99e6),
          Color(0xffff99e6),
          Color(0xffffe6ff),
        ],
        end: Alignment.topLeft,
        begin: Alignment.bottomRight
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ],
  );


  static var mainContainerDecoration = BoxDecoration(
    gradient: const LinearGradient(
        colors: [
          Color(0xffffe6ff),
          Color(0xffff99e6),
          Color(0xffff99e6),
          Color(0xffffe6ff),
        ],
        end: Alignment.topLeft,
        begin: Alignment.bottomRight
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 3,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ],
    borderRadius: BorderRadius.circular(08.w)
  );


}