import 'package:flutter/material.dart';
import 'package:playground/screens/home_screen.dart';
import 'package:playground/screens/layout_demo_screen.dart';

class ExtendedRoute {
  final String route;
  final String label;
  final Widget widget;

  const ExtendedRoute(
      {required this.route, required this.label, required this.widget});
}

const List<ExtendedRoute> extendedRoutes = [
  ExtendedRoute(route: "/", label: "Playground", widget: HomeScreen()),
  ExtendedRoute(
      route: "/layout-demo", label: "Layout Demo", widget: LayoutDemoScreen())
];

final Map<String, WidgetBuilder> routes = {
  for (var element in extendedRoutes) element.route: (_) => element.widget
};
