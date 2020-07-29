import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_statemanagement_practice/schedule.dart';
import 'package:provider/provider.dart';

class MyChart extends StatelessWidget {
  var seriesList = MyChart.createData(0.4);

  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, schedule, _) => charts.PieChart(
        createData(schedule.stateManagementTime),
        animate: false,
        defaultRenderer: charts.ArcRendererConfig(
          arcRendererDecorators: [
            charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.auto,
            ),
          ],
        ),
      ),
    );
  }

  static List<charts.Series<_Problem, String>> createData(
      double stateMgmgTime) {
    final data = [
      new _Problem('UX', 0.1, charts.ColorUtil.fromDartColor(Colors.blue[200])),
      new _Problem('UI', 0.2, charts.ColorUtil.fromDartColor(Colors.red[200])),
      new _Problem(
          'Backend', 0.3, charts.ColorUtil.fromDartColor(Colors.yellow[200])),
      new _Problem('State Management', stateMgmgTime,
          charts.ColorUtil.fromDartColor(Colors.green[200])),
    ];

    return [
      new charts.Series<_Problem, String>(
        id: 'Problem',
        domainFn: (_Problem prob, _) => prob.name,
        measureFn: (_Problem prob, _) => prob.time,
        data: data,
        colorFn: (_Problem prob, _) => prob.color,
        labelAccessorFn: (_Problem row, _) => '${row.name}: ${row.time}',
      ),
    ];
  }
}

class _Problem {
  const _Problem(this.name, this.time, this.color);
  final String name;
  final double time;
  final charts.Color color;
}
