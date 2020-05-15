import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('小组')),
      body: Center(
          child: Text(
        '小组',
        style: TextStyle(fontSize: 30, color: Colors.green),
      )),
    );
  }
}
