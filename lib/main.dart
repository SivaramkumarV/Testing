// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:login_2/grievances.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:login_2/homepage.dart';
import 'package:login_2/leave_request.dart';
import 'package:login_2/attendance.dart';

import 'package:login_2/personal_info.dart';
import 'package:login_2/registration_screen.dart';
import 'welcome_screen.dart';
import 'forgot_password.dart';
import 'SignUP.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Login());}

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          canvasColor: Color(0xfff5f5f5),
          textTheme: TextTheme(
            bodyText1: TextStyle(fontFamily:'Opensans',color: Colors.black54),
          ),
        ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ForgotPassword.id: (context) => ForgotPassword(),
          LeaveRequestWidget.id: (context) => LeaveRequestWidget(),
          Personalinfo.id: (context) => Personalinfo(),
          Attendance.id: (context) => Attendance(),
          Homepage.id: (context) => Homepage(),
          GrievancesWidget.id:(context)=> GrievancesWidget(),
          SignUPWidget.id:(context) => SignUPWidget(),
        });
  }
}
