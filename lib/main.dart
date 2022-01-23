import 'package:flutter/material.dart';
import 'package:login_2/personal_info.dart';
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
      initialRoute:WelcomeScreen.id ,
      routes:{
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id:(context) => RegistrationScreen(),
        ForgotPassword.id:(context) => ForgotPassword(),
        Personalinfo.id:(context) => Personalinfo(),


      },
    );
  }
}