import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Center(child: Text('我的'),)),
      body: Center(
          child: ListView(
          children: <Widget>[
            ListTile(leading: Icon(Icons.people), title: Text('联系人'),)
          ],  
          ))
          ,
    );
  }
}