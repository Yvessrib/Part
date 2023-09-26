// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_final_fields, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class PerfilEmpresa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PerfilEmpresaState();
  }
}

class PerfilEmpresaState extends State<PerfilEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF1C1C1C),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
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
                              print("Teste botão!");
                            },
                            child: Image.asset('assets/images/setinha.png')),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 14),
                          child: GestureDetector(
                              onTap: () {
                                print("Teste botão!");
                              },
                              child:
                                  Image.asset('assets/images/engrenagem.png'))),
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
                                    Image.asset(
                                        'assets/images/perfil_hospital.png'),
                                  ],
                                ))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'Instituto "Apoio Solidário"',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF), // Cor branca (#FFFFFF)
                      fontFamily: 'Raleway',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500, // Peso da fonte 600 (bold)
                      fontStyle: FontStyle.normal,
                      height:
                          20.0 / 24.0, // Line height = 20px / Font size = 24px
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'Categoria: Saúde',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF), // Cor branca (#FFFFFF)
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w500, // Peso da fonte 600 (bold)
                      fontStyle: FontStyle.normal,
                      height:
                          20.0 / 24.0, // Line height = 20px / Font size = 24px
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 20),
              Text(
                'Texto de descrição: ',
                style: TextStyle(
                  color: Color(0xFFFFFFFF), // Cor branca (#FFFFFF)
                  fontFamily: 'Raleway',
                  fontSize: 24,
                  fontWeight: FontWeight.w600, // Peso da fonte 600 (bold)
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 24.0, // Line height = 20px / Font size = 24px
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 350,
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Raleway',
                          fontSize: 20.0,
                          fontWeight:
                              FontWeight.w500, // Peso da fonte 600 (bold)
                          fontStyle: FontStyle.normal,
                        ),
                        children: [
                          TextSpan(
                              text:
                                  'Essa instituição é voltada pra algo muito interessante e tem princípios muitos legais. envonve todas essas coisas que você quer muito ajudar e por isso Lorem Mussum Ipsum, cacilds vidis litro abertis. Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. Pra lá, depois divoltis porris, paradis. Ainda é segunda-feris e já tô sem paciêncis! Admodum accumsan disputationi eu sit. Vide electram sadipscing et per Mussum Ipsum, cacilds vidis litro abertis. Per aumento de cachacis, eu reclamis.....'),
                        ],
                      ),
                    ),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1C1C1C),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(30, 27),
                          backgroundColor: const Color(0xFFF0EC57),
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        onPressed: () {
                          print("Teste botão!");
                        },
                        child: Text(
                          "Editar texto",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Raleway',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
