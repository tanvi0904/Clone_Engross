import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int selectedPage = 1;
  //tatic const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w500);
  final _pageOptions = [
    //CalendarScreen(),
    //TodoScreen(),
    TimerScreen(),
    //StatisticsScreen()
  ];

  void onTabTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Center(child: _children[_currentIndex]),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        onTap: onTabTapped,
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
