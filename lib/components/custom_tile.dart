import 'package:flutter/material.dart';

class Customtile extends StatelessWidget {
  var _number;
  var _title;
  var _time;
  Customtile(this._number, this._title, this._time);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: Text(
          _number,
          style: TextStyle(
              color: Color(0xffE4E7F4),
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        title: Text(
          _title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          _time,
        ),
        trailing: MaterialButton(
          onPressed: () {},
          color: Color(0xff49CC96),
          padding: EdgeInsets.all(7),
          minWidth: 30,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Icon(
            Icons.arrow_right,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
