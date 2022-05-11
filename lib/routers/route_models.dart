import 'package:flutter/material.dart';

class RouteModels {
  final String name;
  final String route;
  final Widget screen;
  final IconData icon;

  RouteModels(
      {required this.name,
      required this.route,
      required this.screen,
      required this.icon});
}
