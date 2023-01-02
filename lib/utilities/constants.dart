import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 50.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 45.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 50.0,
);

const kTextFieldDecorationStyle = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  hintText: 'Enter City Name...',
  hintStyle: TextStyle(color: Colors.grey),
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);
