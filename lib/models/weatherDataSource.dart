import 'package:flutter/material.dart';
import 'package:fluttertest/models/weather.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class WeatherDataSource extends DataGridSource {
  WeatherDataSource({required List<Days> days}) {
    dataGridRows = days
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell<String>(
                  columnName: 'datetime', value: dataGridRow.datetime),
              DataGridCell<double>(
                  columnName: 'tempmax', value: dataGridRow.tempmax),
              DataGridCell<double>(
                  columnName: 'tempmin', value: dataGridRow.tempmin),
              DataGridCell<double>(columnName: 'temp', value: dataGridRow.temp),
              DataGridCell<double>(
                  columnName: 'feelslikemax', value: dataGridRow.feelslikemax),
              DataGridCell<double>(
                  columnName: 'feelslikemin', value: dataGridRow.feelslikemin),
              DataGridCell<double>(
                  columnName: 'feelslike', value: dataGridRow.feelslike),
              DataGridCell<double>(columnName: 'dew', value: dataGridRow.dew),
              DataGridCell<double>(
                  columnName: 'humidity', value: dataGridRow.humidity),
              DataGridCell<double>(
                  columnName: 'windgust', value: dataGridRow.windgust),
              DataGridCell<double>(
                  columnName: 'windspeed', value: dataGridRow.windspeed),
              DataGridCell<double>(
                  columnName: 'winddir', value: dataGridRow.winddir),
              DataGridCell<double>(
                  columnName: 'pressure', value: dataGridRow.pressure),
              DataGridCell<double>(
                  columnName: 'visibility', value: dataGridRow.visibility),
              DataGridCell<double>(
                  columnName: 'solarradiation',
                  value: dataGridRow.solarradiation),
              DataGridCell<double>(
                  columnName: 'solarenergy', value: dataGridRow.solarenergy),
              DataGridCell<double>(
                  columnName: 'uvindex', value: dataGridRow.uvindex),
              // DataGridCell<double>(
              //     columnName: 'severerisk', value: dataGridRow.severerisk),
              // DataGridCell<String>(
              //     columnName: 'sunrise', value: dataGridRow.sunrise),
              // DataGridCell<String>(
              //     columnName: 'sunset', value: dataGridRow.sunset),
              // DataGridCell<String>(
              //     columnName: 'description', value: dataGridRow.description),
            ]))
        .toList();
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            dataGridCell.value.toString(),
            overflow: TextOverflow.ellipsis,
          ));
    }).toList());
  }
}
