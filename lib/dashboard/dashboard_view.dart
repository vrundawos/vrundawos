import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../account/account_view.dart';
import '../constants.dart';
import '../home/home_view.dart';
import '../order/order_view.dart';

class DashboardView extends StatefulWidget {

  final String title;
  DashboardView({Key key, this.title}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _currentIndex = 0;
  DateTime currentBackPressTime;

  Future<bool> onWillPop() {
    var now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(msg: "Press Back Again to Exit");
      return Future.value(false);
    }
    return Future.value(true);
  }

  final tabs = [
    HomeView(),
    OrderView(),
    AccountView(),
  ];

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

    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          // key: globalKey,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Constants.orangeColor,
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? Padding(
                      padding: EdgeInsets.only(bottom: 12.w),
                      child: Image.asset(
                        "images/ic_home_orange.png",
                        height: 54.w,
                        width: 54.w,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(bottom: 12.w),
                      child: Image.asset(
                        "images/ic_home_gray.png",
                        height: 54.w,
                        width: 54.w,
                        color: Constants.grayText,
                      ),
                    ),
              title: _currentIndex == 0
                  ? Text('Home', style: Theme.of(context).textTheme.headline2)
                  : Text('Home', style: Theme.of(context).textTheme.headline3),
              /*SizedBox.shrink()*/
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 1
                  ? Padding(
                      padding: EdgeInsets.only(bottom: 12.w),
                      child: Image.asset(
                        "images/ic_order_orange.png",
                        height: 54.w,
                        width: 54.w,
                        color: Constants.orangeColor,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(bottom: 12.w),
                      child: Image.asset("images/ic_order_gray.png",
                          height: 54.w, width: 54.w),
                    ),
              title: _currentIndex == 1
                  ? Text('Order', style: Theme.of(context).textTheme.headline2)
                  : Text('Order', style: Theme.of(context).textTheme.headline3),
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? Padding(
                      padding: EdgeInsets.only(bottom: 12.w),
                      child: Image.asset(
                        "images/is_account_orange.png",
                        height: 54.w,
                        width: 54.w,
                        color: Constants.orangeColor,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(bottom: 12.w),
                      child: Image.asset(
                        "images/ic_account_gray.png",
                        height: 54.w,
                        width: 54.w,
                      ),
                    ),
              title: _currentIndex == 2
                  ? Text('Account', style: Theme.of(context).textTheme.headline2)
                  : Text('Account', style: Theme.of(context).textTheme.headline3),
            ),
          ],
        ),
      ),
    );
  }
}