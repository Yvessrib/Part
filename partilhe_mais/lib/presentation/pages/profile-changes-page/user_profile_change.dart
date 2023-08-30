// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_final_fields, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/components/MyTextFormFieldSenha.dart';
import 'package:partilhe_mais/presentation/components/MyTextFormfield.dart';

class UserUpdate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UserUpdateState();
  }
}

class UserUpdateState extends State<UserUpdate> {
  final _formKey = GlobalKey<FormState>();
  final namecontroler = TextEditingController();
  final cpfcontroler = TextEditingController();
  final emailcontroler = TextEditingController();
  final passwordcontroler = TextEditingController();
  final passwordconfirmationcontroler = TextEditingController();
  String name = '';
  String email = '';
  String cpf = '';
  String password = '';
  String passwordconfirmation = '';

  bool _passwordVisible = false;

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
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/header.png',
                  width: double.infinity,
                ),
                Center(
                  child: Row(
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
                                    Image.asset(
                                        'assets/images/foto_perfil.png'),
                                    Positioned(
                                        bottom: 0,
                                        right: 20,
                                        child: Image.asset(
                                            'assets/images/mais.png'))
                                  ],
                                ))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(3, 15, 0, 0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFFF0EC57), width: 1),
                              ),
                            ),
                            child: Text(
                              'CPF: 111.222.333-44',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MyTextFormField(
                    controller: namecontroler,
                    hintText: 'Nome completo',
                    obscureText: false,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Por favor, informe seu nome completo';
                      }
                      return null;
                    },
                    onSaved: (value) => name = value,
                  ),
                  SizedBox(height: 20),
                  MyTextFormField(
                    controller: emailcontroler,
                    hintText: 'Email',
                    obscureText: false,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Por favor, informe seu email corretamente';
                      }
                      return null;
                    },
                    onSaved: (value) => email = value,
                  ),
                  SizedBox(height: 20),
                  MyTextFormFieldSenha(
                    controller: passwordcontroler,
                    obscureText: !_passwordVisible,
                    hintText: 'Senha',
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Por favor, digite uma senha válida';
                      }
                      return null;
                    },
                    onSaved: (value) => password = value,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Spacer(), // This spacer pushes the button to the bottom
            Container(
              padding: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: const Color(0xFF1C1C1C),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(354, 27),
                  backgroundColor: const Color(0xFFF0EC57),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Salvar Edição",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Raleway',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
