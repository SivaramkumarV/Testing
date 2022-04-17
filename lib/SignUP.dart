import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:login_2/homepage.dart';
import 'package:login_2/welcome_screen.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:login_2/date_picker.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class SignUPWidget extends StatefulWidget {
 static const id='SignUP';
 @override
  _SignUPWidgetState createState() => _SignUPWidgetState();
}

class _SignUPWidgetState extends State<SignUPWidget> {
  final _firestore =FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  bool isHiddenPassword = true;
  void passwordview() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  String selectedValue2;
  List<String> items2 = [
    'Day',
    'Night',
  ];
  String selectedValue1;
  List<String> items1 = [
    'O+ve',
    'B-ve',
  ];
  String email;
  String password;
  String Name;
  String phno;
  String empID;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFFA726),
        automaticallyImplyLeading: false,
        title: Text(
          'Profile Details',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 21,
            ),
            onPressed: () async {
              await Navigator.pushNamed(
                context,
                WelcomeScreen.id,
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/waves2x.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Container(
                              width: 350,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  onChanged: (value){
                                     email=value;
                                  },
                                  controller: textController1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Your Email',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Opensans',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Container(
                              width: 350,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                child: TextFormField(
                                  onChanged: (value){
                                    password=value;
                                  },
                                  controller: textController2,
                                  obscureText: isHiddenPassword,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Your Password',
                                    suffixIcon: InkWell(
                                      onTap: passwordview,
                                      child: Icon(Icons.visibility),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Opensans',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Container(
                              width: 350,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                child: TextFormField(
                                  onChanged: (value){
                                    Name=value;
                                  },
                                  controller: textController3,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Your Name',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Opensans',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Container(
                              width: 350,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                child: TextFormField(
                                  onChanged: (value){
                                    phno=value;
                                  },
                                  controller: textController4,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Phone Number',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Opensans',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Container(
                              width: 350,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                child: TextFormField(
                                  onChanged: (value){
                                    empID=value;
                                  },
                                  controller: textController5,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Employee ID',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Opensans',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'BG:',
                            style: TextStyle(
                              fontFamily: 'Opensans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(90, 0, 0, 0),
                          child: Text(
                            'DOB:',
                            style: TextStyle(
                              fontFamily: 'Opensans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(85, 0, 0, 0),
                          child: Text(
                            'Shift:',
                            style: TextStyle(
                              fontFamily: 'Opensans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Container(
                            child: CustomDropdownButton2(
                                hint: 'Select',
                                dropdownItems: items1,
                                value: selectedValue1,
                                onChanged: (value){
                                  setState((){
                                    selectedValue1=value;
                                  });
                                }),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Container(
                            child: Datepicker(),
                            width: 110,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Container(
                            child: CustomDropdownButton2(
                                hint: 'Select',
                                dropdownItems: items2,
                                value: selectedValue2,
                                onChanged: (value){
                                  setState((){
                                    selectedValue2=value;
                                  });
                                }),
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'DOJ:',
                            style: TextStyle(
                              fontFamily: 'Opensans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(205, 0, 0, 0),
                          child: Text(
                            'DOQ:',
                            style: TextStyle(
                              fontFamily: 'Opensans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Container(child: Datepicker(),
                            width: 110,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(145, 0, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Container(child: Datepicker(),
                            width: 110,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(100, 20, 100, 0),
                    child: Material(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      elevation: 5.0,
                      child: MaterialButton(
                        onPressed: () async {
                          setState(() {
                            showSpinner =true;
                          });
                          try {
                            final newUser = await _auth
                                .createUserWithEmailAndPassword(
                                email: email, password: password);
                            if(newUser!=null){
                              Navigator.pushNamed(context, Homepage.id);
                            }
                            setState(() {
                              showSpinner=false;
                            });
                          }
                          catch(e){
                            print (e);
                          }
                          _firestore.collection('Personal Details').add({
                            'Email':_auth.currentUser.email,
                            'Name': Name,
                            'Phone Number':phno,
                            'Employee ID':empID,
                            'BG':selectedValue1,
                            'Shift':selectedValue2,
                          });
                          },
                        minWidth: 200.0,
                        height: 42.0,
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
