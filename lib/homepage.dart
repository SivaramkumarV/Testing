// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_2/attendance.dart';
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
  final _auth = FirebaseAuth.instance;
  User loggedInUser;
  List<PieData> chartData = [
    PieData(25, 'present'),
    PieData(4, 'Late'),
    PieData(2, 'Leave'),
  ];
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }
  void getCurrentUser() async{
    try {
      final user=await _auth.currentUser;
      if(user!=null){
        loggedInUser = user;
        print(loggedInUser.email);
      }}
    catch(e){
      print(e);
        }
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        drawer: Drwr(),
        appBar: AppBar(
          actions: [IconButton(
              onPressed: () {
                _auth.signOut();
                Navigator.pushNamed(context, WelcomeScreen.id);
              },
              icon: Icon(Icons.logout))],
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
                        fontSize: 18,
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
                        fontSize: 18,
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
