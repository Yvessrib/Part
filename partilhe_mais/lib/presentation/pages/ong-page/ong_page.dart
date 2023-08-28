// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

class ONG extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ONGState();
  }
}

class ONGState extends State<ONG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 67, left: 36, right: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            print("Teste botão!");
                          },
                          child: Image.asset('assets/images/ep_back.png')),
                      Container(
                        width: 217,
                        height: 61,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0EC57),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Hospital Santa Rita',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Image.asset('assets/images/fotohospital.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26, left: 16, bottom: 19),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Detalhes da Instituição',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Raleway',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, bottom: 19, right: 32),
                  child: Text(
                    'Lorem algums infos tipo nome, data de criação, local, nome da equipe que recolhe doação, ações que vão usar o dinheiro para e propósitos, Lorem algums infos tipo nome, data de criação, local, nome da equipe que recolhe doação, ações que vão usar o dinheiro para e propósitos Lorem algums infos tipo nome, data de criação, local, nome da equipe que recolhe doação, ações que vão usar o dinheiro para e propósitos ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                    height: 100), // Espaçamento entre o texto e o botão "Doar",
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1C1C1C),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(328, 57),
                  backgroundColor: const Color(0xFFF0EC57),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Doar",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Raleway',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
