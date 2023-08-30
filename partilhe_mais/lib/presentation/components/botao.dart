// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ButtonStyle button = ElevatedButton.styleFrom(
  minimumSize: Size(328, 57),
  backgroundColor: Color.fromARGB(0, 0, 0, 0),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    side: BorderSide(color: Colors.white),    
  )
);