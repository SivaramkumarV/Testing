import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:login_2/SignUP.dart';
import 'package:login_2/forgot_password.dart';
import 'package:login_2/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_2/registration_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  static const id = 'welcome_screen';
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool isHiddenPassword = true;
  void passwordview() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Loginpageimage.png"),
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
                                    onChanged: (value){
                                      email = value;
                                    },
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
                                              onChanged: (value){
                                                password = value;
                                              },
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
                                              onPressed: () async {
                                                setState(() {
                                                  showSpinner=true;
                                                });
                                                try {
                                                  final user = await _auth
                                                      .signInWithEmailAndPassword(
                                                      email: email,
                                                      password: password);
                                                  if (user != null) {
                                                    Navigator.pushNamed(
                                                        context, Homepage.id);
                                                  }
                                                  setState(() {
                                                    showSpinner=false;
                                                  });
                                                }
                                                catch(e){
                                                  print (e);
                                                }
                                              },
                                              child: Text(
                                                'Login',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                          FlatButton(
                                              color: Colors.black,
                                              onPressed: () {
                                                      Navigator.pushNamed(context, SignUPWidget.id);
                                              },
                                              child: Text(
                                                'Register',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, ForgotPassword.id);
                                            },
                                            child: Text(
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
