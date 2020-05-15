import 'package:flutter/material.dart';

class Mall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text('集市')),
      body: Center(
          child: Text(
        '集市',
        style: TextStyle(fontSize: 30, color: Colors.green),
      )),
    );
  }
}