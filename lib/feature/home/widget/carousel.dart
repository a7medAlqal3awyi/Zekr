import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themeing/text_styles.dart';

class MyCarouselWidget extends StatelessWidget {
  const MyCarouselWidget({
    super.key,
    required this.fadlElzekr,
  });

  final List<String> fadlElzekr;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.h,
        animateToClosest: true,
        autoPlay: true,
        enlargeCenterPage: true,
        scrollPhysics: const BouncingScrollPhysics(),

      ),
      items: fadlElzekr.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              elevation: .7,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      i,
                      style:TextStyles.font20BlackW500
                    ),
                  )),
            );
          },
        );
      }).toList(),
    );
  }
}
