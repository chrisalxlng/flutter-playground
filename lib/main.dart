import 'package:flutter/material.dart';
import 'package:playground/routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
    );
  }
}
