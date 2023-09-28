// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_final_fields, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Donate2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DonateState();
  }
}

class DonateState extends State<Donate2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF1C1C1C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/header.png',
                  width: double.infinity,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 14),
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
                                    Image.asset('assets/images/idoso2.png'),
                                  ],
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Lar dos idosos - Itanhandu',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Raleway',
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 16, bottom: 19, right: 16),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                  'Que ótimo ver sua disposição para doar! Estamos empolgados com sua generosidade. Para prosseguir, precisamos de algumas informações importantes. Depois disso, você poderá efetuar sua doação facilmente, seja através do QR code que iremos gerar para você ou copiando e colando os dados do Pix. Para garantir a segurança dos seus dados e ter certeza de que sua doação chegará à instituição desejada, trabalhamos exclusivamente com Pix. Isso significa que você está contribuindo de forma segura e direta. Obrigado por fazer a diferença!',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.justify),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 30),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 138.0,
                                  height: 89.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: 'Raleway',
                                          fontSize: 22.0,
                                          fontWeight: FontWeight
                                              .w600, // Peso da fonte 600 (bold)
                                          fontStyle: FontStyle.normal,
                                          height: 20.0 /
                                              22.0, // Line height = 20px / Font size = 22px
                                        ),
                                        children: [
                                          TextSpan(text: 'Valor a doar:\n'),
                                          TextSpan(
                                            text: 'R\$___,__',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 30, right: 30),
                              child: Image.asset('assets/images/QR_Code.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
