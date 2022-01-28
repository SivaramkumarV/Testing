// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:login_2/Attendance.dart';
import 'package:login_2/drawer_screen.dart';
import'package:login_2/personal_info.dart';
import 'package:login_2/welcome_screen.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  return runApp(Homepage());
}

class Homepage extends StatefulWidget {

  static const id = 'homepage';


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<PieData> chartData = [
    PieData(25, 'present'),
    PieData(4, 'Late'),
    PieData(2, 'Leave'),
  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white70,
        drawer: Drwr(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFEAD1F),
          automaticallyImplyLeading: true,
        ),
        body:
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image(
                image: AssetImage('assets/images/waves.png'),
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: Row(
                  children: const [
                    Text('Monthly Calendar',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: SfCalendar(
                  view: CalendarView.month,
                  cellBorderColor: Colors.transparent,
                  showDatePickerButton: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: Row(
                  children: const [
                    Text('Attendance Pie Chart',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: SfCircularChart(
                  legend: Legend(isVisible: true),
                  palette: const [ Colors.green, Colors.red,Colors.deepOrangeAccent],
                  series: [
                    PieSeries<PieData,String>(
                      explode: true,
                      explodeIndex: 1,
                      dataSource: chartData,
                      xValueMapper: (PieData data, _) =>data.xData,
                      yValueMapper: (PieData data, _) =>data.yData,
                      dataLabelSettings: DataLabelSettings(isVisible: true,)
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );

    }
  }
class PieData{
  final num yData;
  final String xData;
  PieData(this.yData,this.xData);
}
