import 'package:flutter/material.dart';

class MyBottom extends StatefulWidget {
  @override
  _MyBottomState createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 18,
      elevation: 0,
      fixedColor: Colors.red,
      selectedFontSize: 13,
      unselectedFontSize: 14,
      backgroundColor: Colors.white,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          // backgroundColor: Colors.deepPurple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notes),
          label: "Magzines",
          // backgroundColor: Colors.deepOrange,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.live_tv),
          label: "videos",
          // backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.live_tv_outlined),
          label: "LiveTv",
          // backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_download),
          label: "Downloads",
          // backgroundColor: Colors.green,
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
