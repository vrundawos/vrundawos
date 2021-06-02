import 'package:flutter/material.dart';

class AccountView extends StatefulWidget {

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        centerTitle: true,
      ),
      body: Placeholder(
        color: Colors.grey.shade300,
      ),
    );
  }
}
