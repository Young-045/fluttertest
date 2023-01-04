import 'package:flutter/material.dart';

class HelloRoute extends StatefulWidget {
  const HelloRoute({super.key});

  @override
  State<HelloRoute> createState() => _HelloRouteState();
}

class _HelloRouteState extends State<HelloRoute> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as List<String>;

    return Scaffold(
        appBar: AppBar(
          title: const Text("WeatherGridViewRoute"),
        ),
        body: Center(child: Text('hello${args.length}')));
  }
}
