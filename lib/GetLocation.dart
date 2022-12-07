import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Location")),
      body: Center(
          child: Text(
        "Hrms",
        textScaleFactor: 2,
      )),
    );
  }
}
