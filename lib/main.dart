import 'package:flutter/material.dart';

import 'package:flutter_router/routers/app_routers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) => AppRoutes.onGenerateDefaultRoute(settings),
    );
  }
}
