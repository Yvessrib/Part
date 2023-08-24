// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/components/MyTextFormfield.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }
}

class SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF1C1C1C),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 33),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Login',
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
                        // ignore: unnecessary_const
                        SizedBox(height: 17),
                        //Email textfield
                        MyTextFormField(
                            controller: emailController,
                            hintText: 'Email',
                            obscureText: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email não pode ser vazio';
                              }
                              return null;
                            },
                            onSaved: (value) => email = value),
                        SizedBox(height: 10),
                        //Password textfield
                        MyTextFormField(
                            controller: passwordController,
                            hintText: 'Senha',
                            obscureText: true,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Senha não pode ser vazia';
                              } else if (value.length < 6) {
                                return 'Senha deve ter no mínimo 6 caracteres';
                              }
                              return null;
                            },
                            onSaved: (value) => senha = value),

                        //Forgot password
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Row(
                            children: [
                              Text(
                                'Esqueceu a senha?',
                                style: TextStyle(
                                  color: Color(0xFFF0EC57),
                                  fontFamily: 'Raleway',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        //sign in button
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
                                      FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                              email: emailController.text,
                                              password: passwordController.text)
                                          .then((value) {
                                        Navigator.of(context).pushNamed('Home');
                                      });
                                    }
                                  },
                                  child: Text(
                                    'Entrar',
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
                    )),

                //Cadastro
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Não tem uma conta?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Text(
                            'Cadastre-se!',
                            style: TextStyle(
                                color: Color(0xFFF0EC57),
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed('SignUp1');
                          },
                        ),
                      )
                    ],
                  ),
                ),
                //or
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "ou",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      )),
                    ],
                  ),
                ),

                // ignore: unnecessary_const
                const SizedBox(
                  height: 10,
                ),

                //Facebook
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      maximumSize: Size(316, 49),
                      minimumSize: Size(316, 49),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(45, 0, 10, 0),
                        child: Image.asset(
                          'assets/icons/facebook.png',
                          height: 22,
                        ),
                      ),
                      Text(
                        'Entrar com o Facebook',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'GothicA1',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      maximumSize: Size(316, 49),
                      minimumSize: Size(316, 49),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(45, 0, 10, 0),
                        child: Image.asset(
                          'assets/icons/search.png',
                          height: 22,
                        ),
                      ),
                      Text(
                        'Entrar com o Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'GothicA1',
                        ),
                      ),
                    ],
                  ),
                ),

                //Google
              ],
            ),
          ),
        ),
      ),
    );
  }
}
