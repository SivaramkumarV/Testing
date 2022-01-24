import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:login_2/forgot_password.dart';
import 'package:login_2/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  static const id='welcome_screen';
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  static const id='welcome_screen';
  bool isHiddenPassword = true;
  void passwordview() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Loginpageimage.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsetsDirectional.fromSTEB(15, 200, 15, 0),
              child: DefaultTabController(
                length: 1,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                        tabs: [
                          Tab(
                            text: 'LOGIN',
                          ),
                        ],
                        labelStyle: TextStyle(
                          fontSize: 35.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        indicatorColor: Colors.white),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: TextFormField(
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    fillColor: Colors.white,
                                    filled: true,
                                    labelText: 'Username',
                                    hintText: 'Enter Username',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 15, 0, 0),
                                          child: TextFormField(
                                            obscureText: isHiddenPassword,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              fillColor: Colors.white,
                                              filled: true,
                                              labelText: 'Password',
                                              hintText: 'Enter Password',
                                              suffixIcon: InkWell(
                                                onTap: passwordview,
                                                child: Icon(Icons.visibility),
                                              ),
                                            ),
                                          ),
                                        ),
                                        FlatButton(
                                            color: Colors.black,
                                            onPressed: () {},
                                            child: Text(
                                              'Login',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                        ),
                                        FlatButton(
                                            color: Colors.black,
                                            onPressed: () {
                                              Navigator.pushNamed(context, RegistrationScreen.id);
                                            },
                                            child: Text(
                                              'Register',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                        ),
                                        TextButton(onPressed:(){
                                          Navigator.pushNamed(context, ForgotPassword.id);
                                        }, child: Text(
                                          'Forgot Password?',
                                          style: TextStyle(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}