import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
 final Color color;

 TimerScreen(this.color);

 @override
 Widget build(BuildContext context) {
   return Container(
     color: color,
   );
 }
}