// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category_button extends StatelessWidget {
  Category_button({
    this.onPressed,
    required this.buttonColor,
    required this.buttonText,
    required this.iconPath,
    super.key,
  });

  VoidCallback? onPressed;
  Color buttonColor;
  String buttonText;
  String iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            maximumSize: Size(327, 60),
            minimumSize: Size(327, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)))),
        onPressed: onPressed,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(buttonText,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w400)),
              Image.asset(
                iconPath,
                height: 38,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
