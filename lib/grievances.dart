import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:login_2/drawer_screen.dart';
import 'package:login_2/homepage.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class GrievancesWidget extends StatefulWidget {
  static const id = 'grievances';

  @override
  _GrievancesWidgetState createState() => _GrievancesWidgetState();
}

class _GrievancesWidgetState extends State<GrievancesWidget> {
  var textController4;
  String subject;
  String selectedCategory;
  List<String> items = [
    'item1',
    'item2',
  ];
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: _textEditingController,
                          validator: (value) {
                            return value.isNotEmpty ? null : "Invalid Field";
                          },
                          decoration: InputDecoration(
                              hintText: "*Subject",
                              hintStyle: TextStyle(color: Colors.redAccent)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Select Category"),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(15,15,15 ,15),
                              child: CustomDropdownButton2(
                                  hint: 'Select Category',
                                  dropdownItems: items,
                                  value: selectedCategory,
                                  onChanged: (value){
                                    setState((){
                                      selectedCategory=value;
                                    });
                                  }),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsetsDirectional.zero,
                          child: Row(
                            children: [
                              Text("Details:")
                            ],
                          ),

                        ),
                        Padding(padding: EdgeInsetsDirectional.zero,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                width: 230,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextFormField(
                                  onChanged: (value){
                                    subject=value;
                                  },
                                  minLines: 1,
                                  maxLines: 5,
                                  keyboardType: TextInputType.multiline,
                                  controller: textController4,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Enter the Subject here...',
                                    hintStyle:
                                    TextStyle(color: Theme.of(context).hintColor),
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
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ],
                        ),
                        )
                      ],
                    ),
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('Submit'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Do something like updating SharedPreferences or User Settings etc.
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            );
          });
        });
  }

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
            color: Colors.white,
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
      backgroundColor: Color(0xfff5f5f5),
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
                    color: Color(0xfff5f5f5),
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
                    color: Color(0xfff5f5f5),
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
              child: FloatingActionButton.extended(
                icon: Icon(Icons.chat),
                label: Text("Chat!"),
                tooltip: 'Connect To Assistant',
                onPressed: () async {
                  await showInformationDialog(context);
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
