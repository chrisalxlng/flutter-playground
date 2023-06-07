import 'package:flutter/material.dart';
import 'package:playground/components/screen_layout.dart';
import 'package:playground/routes.dart';

final List<RouteListItem> routeListItems = extendedRoutes
    .map((e) => RouteListItem(label: e.label, route: e.route))
    .toList();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      title: "Playground",
      child: ListView(
        children: routeListItems,
      ),
    );
  }
}

class RouteListItem extends StatelessWidget {
  final String label;
  final String route;

  const RouteListItem({super.key, required this.label, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(label));
  }
}
