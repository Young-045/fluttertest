import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class SparkLineChart extends StatefulWidget {
  const SparkLineChart({super.key});

  @override
  State<SparkLineChart> createState() => _SparkLineChartState();
}

class _SparkLineChartState extends State<SparkLineChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            heightFactor: 200,
            child: SfSparkLineChart(
              trackball: const SparkChartTrackball(
                  activationMode: SparkChartActivationMode.tap),
              marker: const SparkChartMarker(
                  displayMode: SparkChartMarkerDisplayMode.all),
              labelDisplayMode: SparkChartLabelDisplayMode.all,
              data: const <double>[
                1,
                5,
                -6,
                0,
                1,
                -2,
                7,
                -7,
                -4,
                -10,
                13,
                -6,
                7,
                5,
                11,
                5,
                3
              ],
            )));
  }
}
