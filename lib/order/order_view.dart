import 'package:flutter/material.dart';

class OrderView extends StatefulWidget {

  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
        centerTitle: true,
      ),
      body: Placeholder(
        color: Colors.grey.shade300,
      ),
    );
  }
}
