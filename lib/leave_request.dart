import 'package:flutter/material.dart';
import 'package:login_2/drawer.dart';
import 'package:login_2/home_page.dart';

void main() => runApp(leave_request()

);
class leave_request extends StatelessWidget {
  const leave_request({Key? key}) : super(key: key);

  @override
  static const id = 'leave_request';
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Homepage.id);
              },
              icon: Icon(Icons.home))
        ],
        title: Text('LeaveRequest'),

      ),
      drawer: Drwr(),
    );

  }
}