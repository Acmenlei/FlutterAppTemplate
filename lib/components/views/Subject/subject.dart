import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('书影音')),
      body: Center(
          child: Text(
        '书影音',
        style: TextStyle(fontSize: 30, color: Colors.green),
      )),
    );
  }
}