// FLUTTER / DART / THIRD-PARTIES
import 'package:flutter/material.dart';

// ROUTES
import 'package:cinet/core/constants/router_paths.dart';


class Router {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      default:
        return MaterialPageRoute(
            settings: RouteSettings(name: routeSettings.name),
            builder: (_) => Scaffold(
              body: Center(
                  child:
                  Text("Oups! Page ${routeSettings.name} not found!")),
            ));
    }
  }
}