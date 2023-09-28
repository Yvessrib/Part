// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DonateCard extends StatelessWidget {
  String date;
  String Name;
  String price;

  DonateCard({
    super.key,
    required this.date,
    required this.Name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350, // Definindo a largura para ocupar toda a largura disponível
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Data:',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 16.0, // Line height = 20px / Font size = 16px
                ),
              ),
              SizedBox(width: 5.0),
              Text(
                date,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(
                'Instituição:',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 16.0,
                ),
              ),
              SizedBox(width: 5.0),
              Text(
                Name,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(
                'Valor:',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 16.0,
                ),
              ),
              SizedBox(width: 5.0),
              Text(
                price,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
