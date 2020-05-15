import 'package:douban_app/components/views/Group/group.dart';
import 'package:douban_app/components/views/Home/home.dart';
import 'package:douban_app/components/views/Mall/mall.dart';
import 'package:douban_app/components/views/Profile/profile.dart';
import 'package:douban_app/components/views/Subject/subject.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      title: '豆瓣App',
      home: StackPages(),
    );
  }
}

class StackPages extends StatefulWidget {
  State<StatefulWidget> createState() {
    return Page();
  }
}

class Page extends State<StackPages> {
  int _currentIndex;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
        items: [
           BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页') ),
           BottomNavigationBarItem(icon: Icon(Icons.book),title: Text('书影音')),
           BottomNavigationBarItem(icon: Icon(Icons.group_work),title: Text('小组')),
           BottomNavigationBarItem(icon: Icon(Icons.local_mall),title: Text('集市')),
           BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('我的')),
        ],
      ),
        body: IndexedStack(
          index: _currentIndex,
          children: <Widget>[
            Home(),
            Subject(),
            Group(),
            Mall(),
            Profile()
          ],
        )
      );
  }
}