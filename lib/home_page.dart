import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 90;
  final String name = "Ankit saroj";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first app"),
      ),
      body: Center(
        child: Container(
          child: Text("hello welcome to $days by $name "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
