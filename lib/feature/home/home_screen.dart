import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      "أذكار الصباح",
      "أذكار المساء",
      "أذكار بعد السلام من الصلاة المفروضة",
      "تسابيح",
      "أذكار النوم",
      "أذكار الاستيقاظ",
      "أدعية قرآنية",
      "أدعية الأنبياء",
    ];
    List<String> backgrounds = [
      "assets/images/sun_shine.jpg",
      "assets/images/sun_set.jpg",
      "assets/images/azkar.jpg",
      "assets/images/tasbi7.jpg",
      "assets/images/sleap.jpg",
      "assets/images/wakeup.jpg",
      "assets/images/quraan.jpg",
      "assets/images/do3aaa.jpg",
    ];
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: titles.length,
            itemBuilder: (context, index) => GestureDetector(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
                child: Container(
                  height: 140.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(backgrounds[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
                  child: Text(
                    textAlign: TextAlign.right,
                    titles[index],
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Cairo",
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
