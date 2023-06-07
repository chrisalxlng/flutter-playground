import 'package:flutter/material.dart';

class ScreenLayout extends StatelessWidget {
  final Widget child;
  final String title;

  const ScreenLayout({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(title),
        ),
        body: child);
  }
}
