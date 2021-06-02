import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gb_frontend_flutter/common/Search_textfield.dart';
import '../constants.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int segmentedControlValue = 0;
  TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    if (data.size.shortestSide < 600) {
      Constants.titleTextSize = 60.ssp;
      Constants.subtitleTextSize = 50.ssp;
      Constants.detailTextSize = 40.ssp;
      Constants.subDetailTextSize = 35.ssp;
    } else {
      Constants.titleTextSize = 45.ssp;
      Constants.subtitleTextSize = 40.ssp;
      Constants.detailTextSize = 35.ssp;
      Constants.subDetailTextSize = 28.ssp;
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'images/img_bg_appbar.png',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  height: 380.w,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 55.w, right: 55.w),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Center(
                            child: Text('Guaubox',
                                style: Theme.of(context).textTheme.headline1),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'images/img_search_view.png',
                              height: 110.w,
                              width: 110.w,
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    segmentedControl(),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 55.h,right: 55.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 55.w,
                  ),
                  SearchTextFieldCustom(
                      "Map location",
                      TextInputType.text,
                      TextInputAction.next,
                      txtSearch),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //TABBAR VIEW
  Widget segmentedControl() {
    return CupertinoSlidingSegmentedControl(
        groupValue: segmentedControlValue,
        backgroundColor: Colors.white,
        thumbColor: Constants.orangeColor,
        children: <int, Widget>{
          0: segmentedControlValue == 0
              ? Padding(
                  padding: EdgeInsets.fromLTRB(15.h, 15.h, 15.h, 15.h),
                  child: Text('Delivery',
                      style: Theme.of(context).textTheme.headline4),
                )
              : Padding(
                  padding: EdgeInsets.fromLTRB(15.h, 15.h, 15.h, 15.h),
                  child: Text('Delivery',
                      style: Theme.of(context).textTheme.headline5),
                ),
          1: segmentedControlValue == 1
              ? Padding(
                  padding: EdgeInsets.fromLTRB(15.h, 15.h, 15.h, 15.h),
                  child: Text('Pickup',
                      style: Theme.of(context).textTheme.headline4),
                )
              : Padding(
                  padding: EdgeInsets.fromLTRB(15.h, 15.h, 15.h, 15.h),
                  child: Text('Pickup',
                      style: Theme.of(context).textTheme.headline5),
                ),
        },
        onValueChanged: (value) {
          setState(() {
            segmentedControlValue = value;
          });
        });
  }
}
