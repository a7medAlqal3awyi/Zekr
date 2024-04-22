import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes.dart';
import '../../../core/themeing/text_styles.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    super.key,
    required this.endProfiles,
    required this.backgrounds,
    required this.titles,
    required this.index,
  });

  final List<String> endProfiles;
  final List<String> backgrounds;
  final List<String> titles;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.details,
            arguments: endProfiles[index]);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
        child: Container(
          height: 130.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgrounds[index]),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
          child: Text(
            textAlign: TextAlign.right,
            titles[index],
            style: TextStyles.font18WhiteW600
          ),
        ),
      ),
    );
  }
}
