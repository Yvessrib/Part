// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class MyTextFormFieldSenha extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final validator;
  final onSaved;

  const MyTextFormFieldSenha({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.validator,
    required this.onSaved,
  }) :super(key: key);

  @override
  _MyTextFormFieldSenhaState createState() => _MyTextFormFieldSenhaState();
}
class _MyTextFormFieldSenhaState extends State<MyTextFormFieldSenha> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          onSaved: widget.onSaved,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                }); 
              },
            ),
            contentPadding: EdgeInsets.fromLTRB(3, 15, 0, 0),
            hintText: widget.hintText,
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
          obscureText: _passwordVisible ? false : widget.obscureText,
        ));
  }
}