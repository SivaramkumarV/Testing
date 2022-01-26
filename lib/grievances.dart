import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_2/drawer_screen.dart';
import 'package:login_2/homepage.dart';

class GrievancesWidget extends StatefulWidget {
  static const id='grievances';

  @override
  _GrievancesWidgetState createState() => _GrievancesWidgetState();
}

class _GrievancesWidgetState extends State<GrievancesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFEAD1F),
        automaticallyImplyLeading: true,
        title: Text(
          'GRIEVANCES',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat',
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
         IconButton(
          color: Colors.transparent,
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 21,
            ),
            onPressed: () async {
              await Navigator.pushNamed(
                context,
                Homepage.id,

              );
            },
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE2D59A),
      drawer: Drwr(),

      body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.08, -0.66),
                child: Material(
                  color: Colors.transparent,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: 350,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFE2D59A),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                      child: Text(
                        'TICKET NO                                     16112021\nRAISED ON                                     16-Nov\nCLOSURE DATE                             16-Nov\nSTATUS                                           Closed\n',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          height: 1.7,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.08, 0.04),
                child: Material(
                  color: Colors.transparent,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: 350,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFE2D59A),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                      child: Text(
                        'TICKET NO\nRAISED ON\nCLOSURE DATE\nSTATUS',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          height: 1.7,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.96, 0.85),
                child: RaisedButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },

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
        ),

    );
  }
}