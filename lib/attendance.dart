// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:login_2/date_picker.dart';
import 'drawer_screen.dart';
import 'homepage.dart';

void main() => runApp(Attendance());

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  static const id = 'attendance';
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffddccb6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFEAD1F),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Homepage.id);
                },
                icon: Icon(Icons.home))
          ],
          title: Text('Attendance'),
        ),
        drawer: Drwr(),
        body: Stack(
          children: [
            Image(
              image: AssetImage('assets/images/waves.png'),
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 48),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.black,
                      tabs: const [
                        Tab(
                          text: 'DAILY',
                        ),
                        Tab(
                          text: 'MONTHLY',
                        )
                      ],
                    ),
                    Expanded(
                        child: TabBarView(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                                        child: Text('DATE :'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: Datepicker(),
                                      )
                                    ],
                                  ),
                                ),Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      'ENTRY TIME : 8.00 AM\n EXIT TIME : 2.00 PM\n NO.OF.HOURS : 6 hrs',
                                      style: TextStyle(
                                          height: 2, fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  elevation: 8,
                                  color: Color(0xffddccb6),
                                ),
                              ],
                            ),
                            Column(children: [Padding(
                              padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                              child: Row(children: const [Text('MONTH'),],),
                            )],)
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      );

  }
}