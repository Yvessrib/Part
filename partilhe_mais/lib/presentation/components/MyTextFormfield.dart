// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final validator;
  final onSaved;

  const MyTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.validator,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: TextFormField(
          controller: controller,
          validator: validator,
          onSaved: onSaved,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(3, 15, 0, 0),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white,
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF0EC57))),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          obscureText: obscureText,
        ));
  }
}
