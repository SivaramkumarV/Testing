import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datepicker extends StatefulWidget {
  Datepicker({Key key}) : super(key: key);

  @override
  _DatepickerState createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  String date = 'Pick Date';
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: const Color(0xFFFEAD1F)),
        onPressed: () async {
          DateTime _newdate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1990),
              lastDate: DateTime.now());
          if (_newdate != null) {
            setState(() {
              date = DateFormat('dd/MM/yyyy').format(_newdate);
            });
          }
        },
        child: Text(date));
  }
}
