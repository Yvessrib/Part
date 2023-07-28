// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  
  Function()? onTap;
  
  ButtonLogin({super.key, required this.onTap});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: const BoxDecoration(
          color: Color(0xFFF0EC57),
          borderRadius: BorderRadius.all(Radius.circular(15),
        )),
        child: const Center(
          child: Text(
            "Entrar",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w300,
            ),
          ),
        )
      ),
    );
  }
}
