import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  final String title;
  HomeView({Key key, this.title}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Placeholder(
        color: Colors.grey.shade300,
      ),
    );
  }
}
