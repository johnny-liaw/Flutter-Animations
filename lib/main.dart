import 'package:flutter/material.dart';
import 'package:flutteranimations/Animation_Components/AnimatedToggle.dart';
import 'Animation_Components/RadialMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'FlutterBase',
        home: Scaffold(
            body: Center(child: AnimatedToggle())
        )
    );
  }
}


