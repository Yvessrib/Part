// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/components/MyTextfield.dart';

class SignUp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp2> {
  final namecontroler = TextEditingController();
  final emailcontroler = TextEditingController();
  final cnpjcontroler = TextEditingController();
  final cepcontroler = TextEditingController();
  final estadocontroler = TextEditingController();
  final cidadecontroler = TextEditingController();
  final numcontroler = TextEditingController();
  final ruacontroler = TextEditingController();
  final bairrocontroller = TextEditingController();
  final passwordcontroler = TextEditingController();
  final passwordconfirmationcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF1C1C1C),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Cadastro',
                      style: TextStyle(
                        fontFamily: 'GothicA1',
                        fontSize: 50,
                        color: Color(0xFFF0EC57),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icons/Empresa1.png',
                        height: 70,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset('assets/icons/Empresa2.png', height: 70)
                  ],
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Pessoa \nFísica',
                      style: TextStyle(
                        fontFamily: 'GothicA1',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 36,
                    ),
                    Text(
                      'Empresa',
                      style: TextStyle(
                        fontFamily: 'GothicA1',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [
                    MyTextField(
                        controller: namecontroler,
                        hintText: 'Nome completo',
                        obscureText: false),
                    MyTextField(
                        controller: emailcontroler,
                        hintText: 'Email',
                        obscureText: false),
                    MyTextField(
                        controller: cnpjcontroler,
                        hintText: 'CNPJ',
                        obscureText: false),
                    MyTextField(
                        controller: cnpjcontroler,
                        hintText: 'Estado',
                        obscureText: false),
                    Row(
                      children: [
                        SizedBox(
                          width: 190,
                          child: MyTextField(
                            controller: cepcontroler,
                            hintText: 'Cep',
                            obscureText: false,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 190,
                          child: MyTextField(
                            controller: numcontroler,
                            hintText: 'Número',
                            obscureText: false,
                          ),
                        ),
                      ],
                    ),
                    MyTextField(
                        controller: cidadecontroler,
                        hintText: 'Cidade',
                        obscureText: true),
                    MyTextField(
                        controller: ruacontroler,
                        hintText: 'Rua',
                        obscureText: true),
                    MyTextField(
                        controller: bairrocontroller,
                        hintText: 'Bairro',
                        obscureText: true),
                    MyTextField(
                        controller: passwordcontroler,
                        hintText: 'Senha',
                        obscureText: true),
                    MyTextField(
                        controller: passwordconfirmationcontroler,
                        hintText: 'Confirmação de senha',
                        obscureText: true),
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF0EC57),
                            minimumSize: Size(110, 27)),
                        onPressed: () {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailcontroler.text,
                                  password: passwordcontroler.text)
                              .then((value) {
                            Navigator.of(context).pushNamed('SignIn');
                          });
                        },
                        child: Text(
                          'Continuar',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'GothicA1',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
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
