// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/pages/list-category-page/ongCard.dart';

class ListCategory extends StatelessWidget {
  final String tituloCategoria = "Saúde";
  final String iconeCategoria =
      "assets/img/coracao.png"; // Insira caminho da imagem do Icone

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1C),
      appBar: AppBar(
        title: Text('Seu App'),
        centerTitle: true,
        backgroundColor: Color(0xFF1C1C1C),
      ),
      body: Center(
        child: Container(
          width: 330,
          height: 680,
          decoration: BoxDecoration(
            color: Color(0xFFF0EC57),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                tituloCategoria,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Raleway',
                  fontStyle: FontStyle.normal,
                  height: 0.66667,
                ),
              ),
              SizedBox(height: 40), // Espaçamento após o título
              Expanded(
                child: Column(
                  children: [
                    OngCard(
                        title: 'Associação de Caridade de Pouso Alegre',
                        description:
                            'Ajude a instituição com doações seja monetárias ou de roupas. Ajude o próximo, com algo que você não precisa mais. ',
                        path: 'OngProfile'),
                    OngCard(
                        title: 'Lar dos Idosos',
                        description:
                            'Ajude a melhor idade com doações monetárias ou de fraldas tamaho G. Ajude quem já ajudou muita gente.',
                        path: 'OngProfile2'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
