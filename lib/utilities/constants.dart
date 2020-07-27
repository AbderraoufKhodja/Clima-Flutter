import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kOpenWeatherApiKey = '694783034a9769f6b59eea52a87e7fc8';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 55.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kCityNameField = const InputDecoration(
  icon: Icon(
    Icons.location_city,
    color: CupertinoColors.white,
    size: 30.0,
  ),
  filled: true,
  focusColor: Colors.black,
  hoverColor: Colors.black,
  hintText: 'Enter city name',
  hintStyle: TextStyle(color: Colors.grey),
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
