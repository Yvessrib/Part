// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, curly_braces_in_flow_control_structures

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:partilhe_mais/presentation/components/ErroSnackBar.dart';
import 'package:partilhe_mais/presentation/components/MyTextFormfield.dart';

class SignUp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp1> {
  final _formKey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final cpfcontroller = TextEditingController();
  final passwordconfirmationcontroller = TextEditingController();
  String name = '';
  String email = '';
  String cpf = '';
  String password = '';
  String passwordconfirmation = '';

  Future signUp() async {
    if (passwordConfirmed()) {
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: emailcontroller.text.trim(),
          password: passwordcontroller.text.trim(),
        )
            .then((value) {
          Navigator.pop(context);
          print("SignedUp");
        });

        addUserDetails(namecontroller.text.trim(), emailcontroller.text.trim(),
            cpfcontroller.text.trim());
      } catch (signUpError) {
        if (signUpError == PlatformException) if (signUpError ==
            'ERROR_EMAIL_ALREADY_IN_USE') {}
      }
    }
  }

  Future addUserDetails(String name, String email, String cpf) async {
    await FirebaseFirestore.instance.collection("Users").add({
      "name": namecontroller.text.trim(),
      "email": emailcontroller.text.trim(),
      "cpf": cpfcontroller.text.trim(),
      "total doado": "0,00",
      "Max doado": "0,00",
      "Nivel doador": "1",
      "XP doador": "0",
      "role": "doador",
    });
  }

  bool passwordConfirmed() {
    if (passwordcontroller.text.trim() ==
        passwordconfirmationcontroller.text.trim()) {
      return true;
    }
    return false;
  }

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
                    Image.asset(
                      'assets/icons/Pessoa1.png',
                      height: 70,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('SignUp2');
                        },
                        child: Image.asset('assets/icons/Pessoa2.png',
                            height: 70)),
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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    MyTextFormField(
                      controller: namecontroller,
                      hintText: 'Nome completo',
                      obscureText: false,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Porfavor, informe seu nome completo';
                        }
                        return null;
                      },
                      onSaved: (value) => name = value,
                    ),
                    SizedBox(height: 10),
                    MyTextFormField(
                      controller: cpfcontroller,
                      hintText: 'CPF',
                      obscureText: false,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Porfavor, informe seu cpf corretamente';
                        }
                        return null;
                      },
                      onSaved: (value) => cpf = value,
                    ),
                    SizedBox(height: 10),
                    MyTextFormField(
                      controller: emailcontroller,
                      hintText: 'Email',
                      obscureText: false,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Porfavor, informe seu email corretamente';
                        }
                        return null;
                      },
                      onSaved: (value) => email = value,
                    ),
                    SizedBox(height: 10),
                    MyTextFormField(
                      controller: passwordcontroller,
                      hintText: 'Senha',
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Porfavor, digite uma senha válida';
                        }
                        return null;
                      },
                      onSaved: (value) => password = value,
                    ),
                    SizedBox(height: 10),
                    MyTextFormField(
                      controller: passwordconfirmationcontroller,
                      hintText: 'Confirmação de senha',
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Porvaor, digite uma senha válida';
                        } else if (value != passwordcontroller.text) {
                          return 'As senhas não coincidem';
                        }
                        return null;
                      },
                      onSaved: (value) => passwordconfirmation = value,
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
                                if (_formKey.currentState!.validate()) {
                                  signUp();
                                  print("Button pressed");
                                }
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
            ],
          ),
        ),
      ),
    );
  }
}
