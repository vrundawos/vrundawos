import 'package:flutter/material.dart';
import 'constants.dart';
import 'routes.dart';

void main() {
  final path = RouteGenerater.ROUTE_DASHBOARD;
  final app = GuauboxApp(
    initialRoute: path,
  );
  runApp(app);
}

class GuauboxApp extends StatelessWidget {

  final String initialRoute;
  GuauboxApp({this.initialRoute = ""});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guaubox',
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      theme: Constants.theme,
      onGenerateRoute: RouteGenerater.generateRoute,
    );
  }
}