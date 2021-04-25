import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black.withAlpha(200),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildContainerWithIcon(Icons.camera_roll_outlined, 50, Colors.red),
              buildContainerWithIcon(Icons.audiotrack_outlined, 50, Colors.blue),
              buildContainerWithIcon(Icons.agriculture_outlined, 50, Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}

Container buildContainerWithIcon(IconData icon, double sizeIcon, Color color) {
  return Container(
    width: 100,
    height: 100,
    color: color,
    child: Icon(icon, size: sizeIcon, color: Colors.white),
  );
}
