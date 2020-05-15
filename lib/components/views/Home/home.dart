import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('首页')),
      body: Center(
          child: Text(
        '首页',
        style: TextStyle(fontSize: 30, color: Colors.green),
      )),
    );
  }
}