// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/components/MyTextFormfield.dart';

class SignUp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp2> {
  final _formKey = GlobalKey<FormState>();
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

  String name = '';
  String email = '';
  String cnpj = '';
  String cep = '';
  String estado = '';
  String cidade = '';
  String nume = '';
  String rua = '';
  String bairro = '';
  String password = '';
  String passwordconfirmation = '';

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailcontroler.text.trim(),
              password: passwordcontroler.text.trim())
          .then((value) {
        Navigator.of(context).pushNamed('SignIn');
      });

      // add user details
      addUserDetails(
        namecontroler.text.trim(),
        emailcontroler.text.trim(),
        cnpjcontroler.text.trim(),
        cepcontroler.text.trim(),
        estadocontroler.text.trim(),
        cidadecontroler.text.trim(),
        numcontroler.text.trim(),
        ruacontroler.text.trim(),
        bairrocontroller.text.trim(),
      );
    }
  }

  Future addUserDetails(
    String name,
    String email,
    String cnpj,
    String cep,
    String estado,
    String cidade,
    String num,
    String rua,
    String bairro,
  ) async {
    await FirebaseFirestore.instance
        .collection("institution")
        .doc(cnpjcontroler.text.trim())
        .set({
      "name": namecontroler.text.trim(),
      "email": emailcontroler.text.trim(),
      "cep": cepcontroler.text.trim(),
      "estado": estadocontroler.text.trim(),
      "cidade": cidadecontroler.text.trim(),
      "num": numcontroler.text.trim(),
      "rua": ruacontroler.text.trim(),
      "bairro": bairrocontroller.text.trim(),
    });
  }

  bool passwordConfirmed() {
    if (passwordcontroler.text.trim() ==
        passwordconfirmationcontroler.text.trim()) {
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
              Form(
                key: _formKey,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(children: [
                      MyTextFormField(
                        controller: namecontroler,
                        hintText: 'Nome completo',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Porfavor, informe seu nome';
                          }
                          return null;
                        },
                        onSaved: (value) => name = value,
                      ),
                      MyTextFormField(
                        controller: emailcontroler,
                        hintText: 'Email',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Porfavor, informe seu email';
                          }
                          return null;
                        },
                        onSaved: (value) => email = value,
                      ),
                      MyTextFormField(
                        controller: cnpjcontroler,
                        hintText: 'CNPJ',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Porfavor, informe seu cnpj';
                          }
                          return null;
                        },
                        onSaved: (value) => cnpj = value,
                      ),
                      MyTextFormField(
                        controller: estadocontroler,
                        hintText: 'Estado',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Porfavor, informe o estado da instituição';
                          }
                          return null;
                        },
                        onSaved: (value) => estado = value,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 190,
                            child: MyTextFormField(
                              controller: cepcontroler,
                              hintText: 'CEP',
                              obscureText: false,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Porfavor, informe o cep da instituição';
                                }
                                return null;
                              },
                              onSaved: (value) => cep = value,
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 190,
                            child: MyTextFormField(
                              controller: numcontroler,
                              hintText: 'Número',
                              obscureText: false,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Porfavor, informe o número';
                                }
                                return null;
                              },
                              onSaved: (value) => nume = value,
                            ),
                          ),
                        ],
                      ),
                      MyTextFormField(
                        controller: cidadecontroler,
                        hintText: 'Cidade',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Porfavor, informe a cidade da instituição';
                          }
                          return null;
                        },
                        onSaved: (value) => cidade = value,
                      ),
                      MyTextFormField(
                        controller: ruacontroler,
                        hintText: 'Rua',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Porfavor, informe a rua da instituição';
                          }
                          return null;
                        },
                        onSaved: (value) => rua = value,
                      ),
                      MyTextFormField(
                        controller: bairrocontroller,
                        hintText: 'Bairro',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Porfavor, informe o bairro da instituição';
                          }
                          return null;
                        },
                        onSaved: (value) => bairro = value,
                      ),
                      MyTextFormField(
                        controller: passwordcontroler,
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
                      MyTextFormField(
                        controller: passwordconfirmationcontroler,
                        hintText: 'Confirmação de senha',
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Porvaor, digite uma senha válida';
                          } else if (value != passwordcontroler.text) {
                            return 'As senhas não coincidem';
                          }
                          return null;
                        },
                        onSaved: (value) => passwordconfirmation = value,
                      ),
                    ]),
                  ),
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
                          signUp();
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
