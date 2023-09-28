// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

class OngProfile2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ONGState();
  }
}

class ONGState extends State<OngProfile2> {
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
                            Navigator.pop(context);
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
                            'Lar dos Idosos',
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
                  child: Image.asset('assets/images/lardosidosos.png'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Lar dos Idosos - Itanhandu',
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
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Text(
                    'A Associação de Caridade de PA tem sido uma fonte constante de apoio e solidariedade em nossa comunidade por muitos anos. No entanto, enfrentamos desafios financeiros significativos devido ao aumento das demandas e à necessidade crescente de recursos para continuarmos nossa missão vital. Neste momento, pedimos humildemente sua generosidade para garantir que possamos continuar a ser um farol de esperança para aqueles que mais precisam.Suas doações desempenham um papel crucial em nossa capacidade de oferecer assistência a indivíduos e famílias em situações de necessidade. Com sua ajuda, podemos adquirir os recursos necessários, treinar nossos dedicados voluntários e melhorar nossas instalações para continuar servindo nossa comunidade com excelência.Cada contribuição que você faz faz a diferença real na vida das pessoas que atendemos. Seja parte desta jornada conosco e ajude a garantir que a Associação de Caridade PA continue a ser um pilar sólido de apoio e compaixão em nossa comunidade. Sua generosidade é a luz que ilumina o caminho para um futuro melhor para todos. Junte-se a nós nesta missão de amor e solidariedade.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
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
                onPressed: () {
                  Navigator.of(context).pushNamed('Donate2');
                },
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
