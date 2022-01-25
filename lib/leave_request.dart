import 'package:flutter/material.dart';
import 'package:login_2/drawer_screen.dart';
import 'package:login_2/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';
class LeaveRequestWidget extends StatefulWidget {
  static const id='leave_request';

  LeaveRequestWidget({Key? key}) : super(key: key);

  @override
  _LeaveRequestWidgetState createState() => _LeaveRequestWidgetState();
}

class _LeaveRequestWidgetState extends State<LeaveRequestWidget> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }
  var textcontroller1;
  var textcontroller2;
  var textcontroller3;
  var textcontroller4;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFEAD1F),
        automaticallyImplyLeading: true,
        title: Text(
          'LEAVE REQUEST',
          style:GoogleFonts.montserrat( textStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
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
                context,WelcomeScreen.id,
                );
            },
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE2D59A),
      drawer: Drwr(),
      body:
      Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(-0.88, -0.74),
            child: Text(
              'FROM:',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.84,0),
            child: Text(
              'SUBJECT:',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.46, -0.78),
            child: Material(
              color: Colors.transparent,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  onFieldSubmitted: (_) async {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          textcontroller4.text,
                          style: TextStyle(),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: Color(0x00000000),
                      ),
                    );
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'DD/MM/YY',
                    hintStyle: TextStyle(
                      color: Colors.grey,
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
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.53, 0.43),
            child: Material(
              color: Colors.transparent,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  onFieldSubmitted: (_) async {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          textcontroller2.text,
                          style: TextStyle(),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: Colors.white,
                      ),
                    );
                  },
                  controller: textcontroller2,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Enter Subject Here..',
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x0000000),
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
                    color: Colors.black
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.13, -0.77),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Text(
                'TO:',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.88),
              child:
              RaisedButton(
                onPressed: () async{
                  await showDialog(context: context, builder: (alertDialogContext) {
                   return AlertDialog(title: Text('REQUEST SENT!'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('Ok'),
                        ),
                      ],
                    );

                  }
                  );
                  await Navigator.pushNamed(
                    context,
                    WelcomeScreen.id,
                  );

                },
                child: const Text('Submit'),
              ),

          ),
          Align(
            alignment: AlignmentDirectional(-0.43, -0.38),
            child: Text(
              'NUMBER OF DAYS:',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Arial',
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.29, -0.38),
            child: Material(
              color: Colors.transparent,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  controller: textcontroller3,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Days',
                    hintStyle: TextStyle(
                      color: Colors.grey,
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
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.7, -0.78),
            child: Material(
              color: Colors.transparent,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  onFieldSubmitted: (_) async {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          textcontroller4.text,
                          style: TextStyle(),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: Color(0x00000000),
                      ),
                    );
                  },
                  controller: textcontroller4,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'DD/MM/YY',
                    hintStyle: TextStyle(
                      color: Colors.grey,
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
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -1),
            child: Image.asset(
              'assets/images/waves2x.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
