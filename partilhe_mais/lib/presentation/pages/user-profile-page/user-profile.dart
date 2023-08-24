// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String profileImage =
      "assets/img/toninho.png"; // Insira a URL da imagem de perfil aqui
  final String username = "Toninho Rodrigues"; // Insira o nome do usuário aqui
  final String userRole =
      "Doador Nível 1 - Novato Generoso"; // Insira o cargo do usuário aqui
  final String appName = "Partilhe+"; // Insira o nome do seu aplicativo aqui
  final double totalDonated = 100.0; // Insira o valor total doado aqui
  final double maxDonated = 50.0; // Insira o valor máximo doado aqui

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Usuário'),
      ),
      body: Container(
        color: Color(0xFF1C1C1C), // Cor de fundo preto
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  appName,
                  style: TextStyle(
                    color: Color(0xFF000000), // Cor preta (#000000)
                    fontFamily: 'Raleway',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600, // Peso da fonte 600 (bold)
                    fontStyle: FontStyle.normal,
                    height:
                        20.0 / 24.0, // Line height = 20px / Font size = 24px
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Color(
                          0xFFF0EC57), // Cor de fundo da imagem de perfil amarelo
                      child: Icon(
                        Icons.person,
                        size: 60.0,
                        color: Colors.black, // Cor do ícone (opcional)
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                username,
                style: TextStyle(
                  color: Color(0xFFFFFFFF), // Cor branca (#FFFFFF)
                  fontFamily: 'Raleway',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600, // Peso da fonte 600 (bold)
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 24.0, // Line height = 20px / Font size = 24px
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                userRole,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500, // Peso da fonte 500 (medium)
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 20.0, // Line height = 20px / Font size = 20px
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Espaçamento igual entre os elementos
                children: [
                  Container(
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
                            fontWeight: FontWeight.w600, // Peso da fonte 600 (bold)
                            fontStyle: FontStyle.normal,
                            height: 20.0 / 22.0, // Line height = 20px / Font size = 22px
                          ),
                          children: [
                            TextSpan(text: 'Total doado:\n'),
                            TextSpan(
                              text: 'R\$${totalDonated.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                            fontWeight: FontWeight.w600, // Peso da fonte 600 (bold)
                            fontStyle: FontStyle.normal,
                            height: 20.0 / 22.0, // Line height = 20px / Font size = 22px
                          ),
                          children: [
                            TextSpan(text: 'Máx. doado:\n'),
                            TextSpan(
                              text: 'R\$${maxDonated.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Histórico de Doações',
                style: TextStyle(
                  color: Color(0xFFFFFFFF), // Cor branca (#FFFFFF)
                  fontFamily: 'Raleway',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600, // Peso da fonte 600 (bold)
                  fontStyle: FontStyle.normal,
                  height: 20.0 / 24.0, // Line height = 20px / Font size = 24px
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity, // Definindo a largura para ocupar toda a largura disponível
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Text(
                      '25/07/2023',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Raleway',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        height: 20.0 / 16.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
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
                    Text(
                      'Universitários anônimos',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Raleway',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        height: 20.0 / 16.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
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
                    Text(
                      'R\$50,00',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}