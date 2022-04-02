import 'package:flutter/material.dart';
import 'timer.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;
  final List _children = [
    TimerScreen(Colors.grey),
    TimerScreen(Colors.deepOrange),
    TimerScreen(Colors.green)
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // this will be set when a new tab is tapped
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: Colors.white, size: 25, opacity: .8),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 25, opacity: .10),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Todo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Statistics',
          ),
        ],
      ),
    );
  }
}
