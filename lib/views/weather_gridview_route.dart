import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../models/weather.dart';
import '../models/weatherDataSource.dart';

class WeatherGridViewRoute extends StatefulWidget {
  const WeatherGridViewRoute({super.key});

  @override
  State<WeatherGridViewRoute> createState() => _WeatherGridViewRouteState();
}

class _WeatherGridViewRouteState extends State<WeatherGridViewRoute> {
  late WeatherDataSource _weatherDataSource;
  bool _animationCompleted = false;

  @override
  Widget build(BuildContext context) {
    var route = ModalRoute.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as List<Days>;
    if (route != null && !_animationCompleted) {
      void handler(status) {
        if (status == AnimationStatus.completed) {
          route.animation!.removeStatusListener(handler);

          setState(() {
            _animationCompleted = true;
          });
        }
      }

      route.animation!.addStatusListener(handler);
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text("WeatherGridViewRoute"),
        ),
        body: _animationCompleted
            ? Column(
                children: <Widget>[
                  Center(
                    child: SfDataGrid(
                      source: WeatherDataSource(
                        days: args,
                      ),
                      columnWidthMode: ColumnWidthMode.auto,
                      columnWidthCalculationRange:
                          ColumnWidthCalculationRange.allRows,
                      columns: [
                        GridColumn(
                            columnName: 'datetime',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'datetime',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'tempmax',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'tempmax',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'tempmin',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'tempmin',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'temp',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'temp',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'feelslikemax',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'feelslikemax',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'feelslikemin',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'feelslikemin',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'feelslike',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'feelslike',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'dew',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'dew',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'humidity',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'humidity',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'windgust',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'windgust',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'windspeed',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'windspeed',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'winddir',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'winddir',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'pressure',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'pressure',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'visibility',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'visibility',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'solarradiation',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'solarradiation',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'solarenergy',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'solarenergy',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        GridColumn(
                            columnName: 'uvindex',
                            label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerRight,
                                child: const Text(
                                  'uvindex',
                                  overflow: TextOverflow.ellipsis,
                                ))),
                        // GridColumn(
                        //     columnName: 'severerisk',
                        //     label: Container(
                        //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        //         alignment: Alignment.centerRight,
                        //         child: const Text(
                        //           'severerisk',
                        //           overflow: TextOverflow.ellipsis,
                        //         ))),
                        // GridColumn(
                        //     columnName: 'sunrise',
                        //     label: Container(
                        //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        //         alignment: Alignment.centerRight,
                        //         child: const Text(
                        //           'sunrise',
                        //           overflow: TextOverflow.ellipsis,
                        //         ))),
                        // GridColumn(
                        //     columnName: 'sunset',
                        //     label: Container(
                        //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        //         alignment: Alignment.centerRight,
                        //         child: const Text(
                        //           'sunset',
                        //           overflow: TextOverflow.ellipsis,
                        //         ))),
                        // GridColumn(
                        //     columnName: 'description',
                        //     label: Container(
                        //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        //         alignment: Alignment.centerRight,
                        //         child: const Text(
                        //           'description',
                        //           overflow: TextOverflow.ellipsis,
                        //         ))),
                      ],
                    ),
                  ),
                ],
              )
            : Container());
  }
}
