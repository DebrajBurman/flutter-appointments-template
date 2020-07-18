import 'package:flutter/material.dart';

class modeDesign extends StatelessWidget {
  final IconData icon;
  Color color;

  modeDesign({this.icon, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: 20.0,
        color: color,
      ),
    );
  }
}
