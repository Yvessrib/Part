// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ErrorSnackBar extends StatelessWidget {
  final String errorText;

  const ErrorSnackBar({
    super.key, required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Container(
        padding: EdgeInsets.all(16),
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xFFC72C41)),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    errorText,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "Porfavor, cadastre com um email diferente",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
