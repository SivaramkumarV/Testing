import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';



class Bargraph extends StatefulWidget {
  Bargraph({Key? key }) : super(key: key);



  @override
  _BargraphState createState() => _BargraphState();
}

class _BargraphState extends State<Bargraph> {
  late List<Monthlyattendance> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SfCartesianChart(
        title: ChartTitle(text: 'Monthly Attendance'),
        legend: Legend(isVisible: true),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
          BarSeries<Monthlyattendance, String>(
              name: 'Attendance',
              dataSource: _chartData,
              xValueMapper: (Monthlyattendance attendance, _) =>
                  attendance.continent,
              yValueMapper: (Monthlyattendance attendance, _) => attendance.gdp,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              enableTooltip: true)
        ],
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            title: AxisTitle(text: 'No.Of Days attended')),
      ),
    ));
  }

  List<Monthlyattendance> getChartData() {
    final List<Monthlyattendance> chartData = [
      Monthlyattendance('January', 25),
      Monthlyattendance('February', 24),
      Monthlyattendance('March', 26),
      Monthlyattendance('April', 20),
      Monthlyattendance('May', 26),
      Monthlyattendance('June', 25),
    ];
    return chartData;
  }
}

class Monthlyattendance {
  Monthlyattendance(this.continent, this.gdp);
  final String continent;
  final double gdp;
}
