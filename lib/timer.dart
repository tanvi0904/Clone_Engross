import 'package:flutter/material.dart';

class TimerScreen extends StatelessWidget {
  final Color color;

  TimerScreen(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
