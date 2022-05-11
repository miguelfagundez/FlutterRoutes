import 'package:flutter/material.dart';

class LegendsScreen extends StatelessWidget {
  const LegendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Title'),
        elevation: 3.0,
        backgroundColor: Colors.indigo,
      ),
      body: const Center(
        child: Text('LegendsScreen'),
      ),
    );
  }
}
