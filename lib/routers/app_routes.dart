import 'package:flutter/material.dart';

import 'package:flutter_router/routers/route_models.dart';
import 'package:flutter_router/screens/screens.dart';

class AppRoutes {
  // Initial screen
  static const initialRoute = 'home';

  // Route models - App routes
  static final menuRoutes = <RouteModels>[
    RouteModels(
        name: 'Home Screen',
        route: 'home',
        screen: const HomeScreen(),
        icon: Icons.home),
    RouteModels(
        name: 'Legends Screen',
        route: 'legends',
        screen: const LegendsScreen(),
        icon: Icons.list_alt),
    RouteModels(
        name: 'Marvel Screen',
        route: 'marvel',
        screen: const MarvelScreen(),
        icon: Icons.light_mode),
    RouteModels(
        name: 'Justice League Screen',
        route: 'justice_league',
        screen: const JusticeLeagueScreen(),
        icon: Icons.join_inner_outlined),
    RouteModels(
        name: 'The Simpson Screen',
        route: 'the_simpsons',
        screen: const TheSimpsonsScreen(),
        icon: Icons.people),
    RouteModels(
        name: 'Star Wars Screen',
        route: 'star_wars',
        screen: const StarWarsScreen(),
        icon: Icons.star_outline_sharp)
  ];

  // Get App routes
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> getAppRoutes = {};

    for (final route in menuRoutes) {
      getAppRoutes
          .addAll({route.route: (BuildContext context) => route.screen});
    }

    return getAppRoutes;
  }

  // App routes
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'justice_league': (BuildContext context) => const JusticeLeagueScreen(),
  //   'legends': (BuildContext context) => const LegendsScreen(),
  //   'marvel': (BuildContext context) => const MarvelScreen(),
  //   'the_simpsons': (BuildContext context) => const TheSimpsonsScreen(),
  //   'star_wars': (BuildContext context) => const StarWarsScreen(),
  // };

  static Route<dynamic>? onGenerateDefaultRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
