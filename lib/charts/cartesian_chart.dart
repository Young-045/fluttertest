import 'package:flutter/material.dart';
import 'package:fluttertest/models/weather.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChart extends StatefulWidget {
  const CartesianChart({super.key, this.days});

  final List<Days>? days;

  @override
  State<CartesianChart> createState() => _CartesianChartState();
}

class _CartesianChartState extends State<CartesianChart> {
  late TooltipBehavior _tooltipBehavior;
  late List<DayView> _temp;
  late List<DayView> _tempMin;
  late List<DayView> _tempMax;
  late double? _viewMin;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    _temp = widget.days!.map((e) => DayView(e.datetime, e.temp)).toList();
    _tempMin = widget.days!.map((e) => DayView(e.datetime, e.tempmin)).toList();
    _tempMax = widget.days!.map((e) => DayView(e.datetime, e.tempmax)).toList();
    widget.days!.sort((a, b) => a.tempmin!.compareTo(b.tempmin!));
    List<double?> a = widget.days!.map((e) => e.tempmin).toList();
    _viewMin = a[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        // Chart title
        title: ChartTitle(
            text: '777878',
            backgroundColor: Colors.lightBlue,
            borderColor: Colors.green,
            borderWidth: 2,
            alignment: ChartAlignment.center,
            textStyle: const TextStyle(
              color: Colors.red,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.italic,
              fontSize: 14,
            )),
        // Enable legend
        legend: Legend(isVisible: true),
        // Enable tooltip
        tooltipBehavior: _tooltipBehavior,

        //柱状图,有bug?
        // series: <ChartSeries<DayView, String>>[
        //   ColumnSeries<DayView, String>(
        //     dataSource: _temp,
        //     xValueMapper: (DayView dayView, _) => dayView.dateTime,
        //     yValueMapper: (DayView dayView, _) => dayView.temp,
        //   ),
        //   ColumnSeries<DayView, String>(
        //     dataSource: _tempMax,
        //     xValueMapper: (DayView dayView, _) => dayView.dateTime,
        //     yValueMapper: (DayView dayView, _) => dayView.temp,
        //   ),
        //   ColumnSeries<DayView, String>(
        //     dataSource: _tempMin,
        //     xValueMapper: (DayView dayView, _) => dayView.dateTime,
        //     yValueMapper: (DayView dayView, _) => dayView.temp,
        //   )
        // ],

        //折线图
        series: <LineSeries<DayView, String>>[
          LineSeries<DayView, String>(
              name: 'temp',
              dashArray: <double>[5, 5], //第一个值为渲染线的长度，第二个值为间隙大小
              dataSource: _temp,
              xValueMapper: (DayView dayView, _) => dayView.dateTime,
              yValueMapper: (DayView dayView, _) => dayView.temp,
              dataLabelSettings: const DataLabelSettings(isVisible: true)),
          LineSeries<DayView, String>(
              name: 'tempmax',
              dataSource: _tempMax,
              xValueMapper: (DayView dayView, _) => dayView.dateTime,
              yValueMapper: (DayView dayView, _) => dayView.temp,
              dataLabelSettings: const DataLabelSettings(isVisible: true)),
          LineSeries<DayView, String>(
              name: 'tempmin',
              dataSource: _tempMin,
              xValueMapper: (DayView dayView, _) => dayView.dateTime,
              yValueMapper: (DayView dayView, _) => dayView.temp,
              dataLabelSettings: const DataLabelSettings(isVisible: true)),
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
