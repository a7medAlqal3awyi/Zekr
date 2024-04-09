import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static String fontFamily = "Cairo";
  static TextStyle font18WhiteW600 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
    color: Colors.white,
  );
  static TextStyle font20BlackW500 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static TextStyle font16White = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.sp,
    color: Colors.white,
  );
  static TextStyle font16deepPurpleAccentW500 = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      fontFamily: fontFamily,
      color: Colors.deepPurpleAccent);
}
