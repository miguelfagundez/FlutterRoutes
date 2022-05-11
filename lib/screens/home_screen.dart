import 'package:flutter/material.dart';
import 'package:flutter_router/routers/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final series_list = const [
    "Home",
    "Legends",
    "Marvel",
    "Justice League",
    "The Simpsons",
    "Star Wars"
  ];
  @override
  Widget build(BuildContext context) {
    final routeOptions = AppRoutes.menuRoutes;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TV Series"),
        elevation: 5.0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: routeOptions.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(routeOptions[index].name),
            leading: Icon(routeOptions[index].icon),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              if (index == 0) {
                Navigator.pushReplacementNamed(
                    context, routeOptions[index].route);
              } else {
                Navigator.pushNamed(context, routeOptions[index].route);
              }
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
