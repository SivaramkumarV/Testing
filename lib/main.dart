import 'package:flutter/material.dart';
import 'package:login_2/drawer_screen.dart';
import 'package:login_2/leave_request.dart';
import 'package:login_2/registration_screen.dart';
import 'welcome_screen.dart';
import 'forgot_password.dart';


void main() => runApp(login());

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute:LeaveRequestWidget.id ,
      routes:{
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id:(context) => RegistrationScreen(),
        ForgotPassword.id:(context) => ForgotPassword(),
        LeaveRequestWidget.id:(context)=>LeaveRequestWidget(),
        DrwrScreen.id:(context) => DrwrScreen(),


      },
    );
  }
}