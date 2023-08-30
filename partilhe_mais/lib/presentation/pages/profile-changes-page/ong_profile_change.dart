// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class OngUpdate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OngUpdateState();
  }
}

class OngUpdateState extends State<OngUpdate> {
  final String username = "Toninho Rodrigues"; // Insira o nome do usuário aqui
  final String userRole =
      "Doador Nível 1 - Novato Generoso"; // Insira o cargo do usuário aqui
  final double totalDonated = 100.0; // Insira o valor total doado aqui
  final double maxDonated = 50.0; // Insira o valor máximo doado aqui

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Stack(children: [
            Image.asset(
              'assets/images/header.png',
              width: double.infinity,
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/images/setinha.png')),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Partilhe+',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Raleway',
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: Color(0xFFF0EC57),
                                  width: 5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 10,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  )
                                ]),
                            child: Stack(
                              children: [
                                Image.asset('assets/images/foto_perfil.png'),
                                Positioned(
                                    bottom: 0,
                                    right: 20,
                                    child:
                                        Image.asset('assets/images/mais.png'))
                              ],
                            ))),
                  ],
                ),
              ),
            ),
          ]),
          SizedBox(height: 20.0),
        ]),
      ),
    );
  }
}
