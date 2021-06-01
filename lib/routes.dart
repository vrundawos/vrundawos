import 'package:flutter/material.dart';

import 'home/home_view.dart';

class RouteGenerater {

  static const ROUTE_HOME = "/home";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_HOME:
        final page = HomeView(
          title: 'Guaubox Home Page',
        );
        return MaterialPageRoute(builder: (context) => page);

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('Guaubox Home Page'),
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
        );
    }
  }
}
