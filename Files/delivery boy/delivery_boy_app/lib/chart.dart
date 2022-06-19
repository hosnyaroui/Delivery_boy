import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class ChartWidget extends StatefulWidget {
  
  const ChartWidget({ Key? key }) : super(key: key);

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
  
}

class _ChartWidgetState extends State<ChartWidget> {
  DateTime _dateTimeValue = DateTime.now();


    @override
    Widget build(BuildContext context) {
        final List<ChartData> chartData = [
            ChartData(DateTime(2015, 5, 1), 35),
            ChartData(DateTime(2015, 5, 31), 31),
            ChartData(DateTime(2015, 6, 30), 34),
            ChartData(DateTime(2015, 7, 30), 32),
            ChartData(DateTime(2015, 8, 30), 38),
        ];
        return Scaffold(
            body: Center(
                child: Container(
                    child: SfCartesianChart(
                        primaryXAxis: DateTimeAxis(
                             interval: 0.5,
                        ),
                        
                        series: <ChartSeries<ChartData, DateTime>>[
                        SplineSeries<ChartData, DateTime>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y),
                            
                        ],
                    )
                )
            )
        );
     }}
class ChartData {
        ChartData(this.x, this.y);
        final DateTime? x;
        final double? y;
    }


