import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static String fontFamily = "Tajawal";
  static TextStyle font18WhiteW600 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
    color: Colors.white,
  );
  static TextStyle font20BlackW600 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static TextStyle font22White = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22.sp,
    color: Colors.white,
  );
  static TextStyle font18deepPurpleAccentW400 = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18.sp,
      fontFamily: fontFamily,
      color: Colors.deepPurpleAccent);
}
