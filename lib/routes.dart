import 'package:flutter/material.dart';
import 'account/account_view.dart';
import 'dashboard/dashboard_view.dart';
import 'home/home_view.dart';
import 'order/order_view.dart';

class RouteGenerater {

  static const ROUTE_DASHBOARD = "/dashboard";
  static const ROUTE_HOME = "/home";
  static const ROUTE_ORDER = "/order";
  static const ROUTE_ACCOUNT = "/account";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case ROUTE_DASHBOARD:
        final page = DashboardView(
          title: 'Guaubox',
        );
        return MaterialPageRoute(builder: (context) => page);

      case ROUTE_HOME:
        final page = HomeView();
        return MaterialPageRoute(builder: (context) => page);

      case ROUTE_ORDER:
        final page = OrderView();
        return MaterialPageRoute(builder: (context) => page);

      case ROUTE_ACCOUNT:
        final page = AccountView();
        return MaterialPageRoute(builder: (context) => page);

     /* default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('Guaubox default Page'),
            ),
            body: Center(
              child: Text(
                'Page not found.',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        );*/

    }
  }
}