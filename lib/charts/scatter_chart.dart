import 'dart:isolate';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertest/models/weather.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ScatterChart extends StatefulWidget {
  const ScatterChart({super.key, this.days});

  final List<Days>? days;

  @override
  State<ScatterChart> createState() => _ScatterChartState();
}

class _ScatterChartState extends State<ScatterChart> {
  late TooltipBehavior _tooltipBehavior;
  late List<ScatterView> _scatterData;

  @override
  void initState() async {
    _tooltipBehavior = TooltipBehavior(enable: true);
    _scatterData = await getData();
    super.initState();
  }

  Future<List<ScatterView>> getData() async {
    List<ScatterView> datas = [];
    for (int i = 0; i < 10000; i++) {
      var a = Random().nextInt(1000);
      datas.add(ScatterView(i.toString(), a));
    }
    return datas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: _tooltipBehavior,

            //散点图
            series: <ChartSeries<ScatterView, String>>[
              ScatterSeries(
                animationDuration: 0,
                dataSource: _scatterData,
                xValueMapper: (ScatterView scatterView, _) => scatterView.name,
                yValueMapper: (ScatterView scatterView, _) => scatterView.value,
                markerSettings: const MarkerSettings(width: 1, height: 1),
              )
            ],
          ),
        ],
      )),
    );
  }
}

class DayView {
  DayView(this.dateTime, this.temp);
  final String? dateTime;
  final double? temp;
}

class ScatterView {
  ScatterView(this.name, this.value);
  final String name;
  final int value;
}
