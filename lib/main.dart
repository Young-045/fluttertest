// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:fluttertest/models/weather.dart';
import 'charts/cartesian_chart.dart';
import 'views/weather_gridview_route.dart';
import 'web/weather_dal.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh'),
      ],
      locale: const Locale('zh'),
      title: 'Startup Name Generator',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'MyHomePage'),
        'weather_gridview': (context) => const WeatherGridViewRoute(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String type1 = list.first;
  String type2 = list.first;
  String type3 = list.first;
  late Future<Weather> futureWeather;
  void _selectedOneChanged(String? value) {
    setState(() {
      type1 = value!;
    });
  }

  void _selectedTwoChanged(String? value) {
    setState(() {
      type2 = value!;
    });
  }

  void _selectedThreeChanged(String? value) {
    setState(() {
      type3 = value!;
    });
  }

  @override
  void initState() {
    super.initState();
    futureWeather = fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const SizedBox(
                height: 100,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Message'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/");
                },
              ),
              ListTile(
                leading: const Icon(Icons.equalizer),
                title: const Text('Equalizer'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context)
                      .pushNamed("weather_gridview", arguments: futureWeather);
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsetsDirectional.only(start: 20, top: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsetsDirectional.only(start: 20),
                    child: DropdownButton<String>(
                      value: type1,
                      elevation: 16,
                      onChanged: _selectedOneChanged,
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(start: 20),
                    child: DropdownButton<String>(
                      value: type2,
                      elevation: 16,
                      onChanged: _selectedTwoChanged,
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(start: 20),
                    child: DropdownButton<String>(
                      value: type3,
                      elevation: 16,
                      onChanged: _selectedThreeChanged,
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(start: 20),
                    child: TextButton(
                      onPressed: () async {
                        var result = await showDateRangePicker(
                            context: context,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2023));
                        print('$result');
                        print('123');
                      },
                      child: const Text('flutterDatepicker'),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   width: 1000,
            //   height: 100,
            //   margin: const EdgeInsetsDirectional.only(start: 20, end: 20),
            //   child: const SparkLineChart(),
            // ),
            Container(
              width: 1000,
              height: 400,
              margin: const EdgeInsetsDirectional.only(start: 20, end: 20),
              child: FutureBuilder<Weather>(
                future: futureWeather,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return CartesianChart(
                      days: snapshot.data!.days,
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
            Container(
              width: 1000,
              height: 50,
              margin: const EdgeInsetsDirectional.only(start: 20, end: 20),
              child: FutureBuilder<Weather>(
                future: futureWeather,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!.resolvedAddress!);
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
          ],
        ));
  }
}
