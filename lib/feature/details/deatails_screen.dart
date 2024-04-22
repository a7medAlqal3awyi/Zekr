import 'dart:convert';
import 'package:azkar/core/helper/exetention.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share/share.dart';
import '../../core/themeing/text_styles.dart';

class DetailsScreen extends StatefulWidget {
  final String endPoint;

  const DetailsScreen({super.key, required this.endPoint});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  void shareText(String text) {
    Share.share(text);
  }

  Map<String, dynamic> jsonData = {};

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    String jsonString =
        await rootBundle.loadString('assets/json_model/model.json');
    setState(() {
      jsonData = json.decode(jsonString);
    });

    debugPrint("===============================\n");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.deepPurpleAccent.shade200,
              ),
            ),
          ],
          centerTitle: true,
          title: Text(
            widget.endPoint,
            style: TextStyles.font20BlackW600
                .copyWith(color: Colors.deepPurpleAccent.shade200),
          )),
      body: Card(
        elevation: 10.w,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: jsonData[widget.endPoint]?.length ?? 0,
          separatorBuilder: (context, index) => Container(),
          itemBuilder: (context, index) => Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(2.w),
                  height: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.withOpacity(.3),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.deepPurpleAccent.shade200,
                          child: IconButton(
                            onPressed: () {
                              shareText(
                                  jsonData[widget.endPoint][index]['content']);
                            },
                            icon:  Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 24.w,
                            ),
                          ),
                        ),
                        jsonData[widget.endPoint][index]['count'] != ""
                            ? CircleAvatar(
                          radius: 20,
                                backgroundColor:
                                    Colors.deepPurpleAccent.shade200,
                                child: Flex(
                                  mainAxisAlignment:  MainAxisAlignment.center,
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      jsonData[widget.endPoint][index]['count'],
                                      style: TextStyles
                                          .font20BlackW600
                                          .copyWith(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox()
                      ]),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${jsonData[widget.endPoint][index]['content']}",
                          textAlign: TextAlign.right,
                          style: TextStyles.font20BlackW600),
                      jsonData[widget.endPoint][index]['description'] != ""
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(height: 7.h),
                                Text(
                                    "${jsonData[widget.endPoint][index]['description']}",
                                    textAlign: TextAlign.right,
                                    style:
                                        TextStyles.font18deepPurpleAccentW400),
                              ],
                            )
                          : const SizedBox(),
                    ],
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
