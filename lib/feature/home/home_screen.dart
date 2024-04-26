import 'dart:io';

import 'package:azkar/feature/home/widget/carousel.dart';
import 'package:azkar/feature/home/widget/home_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/themeing/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fadlElzekr = [
      "وَلَذِكْرُ اللَّهِ أَكْبَرُ",
      "فَاذْكُرُونِي أَذْكُرْكُمْ وَاشْكُرُوا لِي وَلَا تَكْفُرُونِ",
      "وَاذْكُرُوا اللَّهَ فِي أَيَّامٍ مَعْدُودَاتٍ",
      "وَاذْكُرْ رَبَّكَ كَثِيرًا وَسَبِّحْ بِالْعَشِيِّ وَالْإِبْكَارِ",
      "فَإِذَا قَضَيْتُمُ الصَّلَاةَ فَاذْكُرُوا اللَّهَ قِيَامًا وَقُعُودًا وَعَلَى جُنُوبِكُمْ",
      "وَاذْكُرُوا اللَّهَ كَثِيرًا",
      " سَبِّحِ اسْمَ رَبِّكَ الْأَعْلَى",
      "فَسُبْحَانَ اللَّهِ حِينَ تُمْسُونَ وَحِينَ تُصْبِحُونَ",
      "وَمِنْ آنَاءِ اللَّيْلِ فَسَبِّحْ وَأَطْرَافَ النَّهَارِ لَعَلَّكَ تَرْضَى",
      "وَسَبِّحْ بِحَمْدِ رَبِّكَ قَبْلَ طُلُوعِ الشَّمْسِ",
      "وَاذْكُرْ رَبَّكَ إِذَا نَسِيتَ",
      "لَا بِذِكْرِ اللَّهِ تَطْمَئِنُّ الْقُلُوبُ"
    ];
    List<String> titles = [
      "أذكار الصباح",
      "أذكار المساء",
      "أذكار بعد الصلاة",
      "أدعية النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ",
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
      "assets/images/best_do3aa.png",
      "assets/images/tasbi7.jpg",
      "assets/images/sleap.jpg",
      "assets/images/wakeup.jpg",
      "assets/images/quraan.jpg",
      "assets/images/do3aaa.jpg",
    ];
    List<String> endProfiles = [
      "أذكار الصباح",
      "أذكار المساء",
      "أذكار بعد الصلاة",
      "أدعية النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ",
      "تسابيح",
      "أذكار النوم",
      "أذكار الاستيقاظ",
      "أدعية قرآنية",
      "أدعية الأنبياء",
    ];
    return PopScope(
      canPop: false,
      onPopInvoked: (bool shouldPop) async {
        final shouldExit = await showDialog(
          context: context,
          builder: (BuildContext dialogContext) => CupertinoAlertDialog(
            content: Text(
              'هل تريد الخروج من التطبيق؟',
              style: TextStyles.font20BlackW600.copyWith(fontSize: 18.sp),
            ),

            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(dialogContext).pop(false);
                },
                child: Text(
                  'لا',
                  style: TextStyles.font18deepPurpleAccentW400,
                ),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  exit(0); // Exit the app with code 0
                },
                child: Text(
                  'نعم',
                  style: TextStyles.font18deepPurpleAccentW400,
                ),
              ),
            ],
          ),
        );

        return shouldExit ?? false;
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 20.h),
                MyCarouselWidget(fadlElzekr: fadlElzekr),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                  child: Text(
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    "قائمة الاذكار",
                    style: TextStyles.font20BlackW600.copyWith(fontSize: 22.sp)
                  ),
                ),
                Center(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: titles.length,
                    itemBuilder: (context, index) => HomeItem(
                        index: index,
                        endProfiles: endProfiles,
                        backgrounds: backgrounds,
                        titles: titles),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
