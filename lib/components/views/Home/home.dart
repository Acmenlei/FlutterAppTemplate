import 'package:douban_app/components/network/request.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeData();
}

// 数据请求涉及到state的管理需要使用fulwidget
class HomeData extends State<Home> {
  @override
  void initState() {
    super.initState();
    HttpRequest.request('/v2/movie/top250?start=0&count=20')
    .then((value) => print(value));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('首页'),)),
      body: Center(
          child: Text(
        '首页',
        style: TextStyle(fontSize: 30, color: Colors.green),
      )),
    );
  }
}