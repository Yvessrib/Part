// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/components/MyTextfield.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {

    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false),
              SizedBox(height: 10),
              //Password textfield
              MyTextField(
                  controller: passwordController,
                  hintText: 'Senha',
                  obscureText: true),
              //Forgot password
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                        onPressed: signUserIn,
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
                      child: Text(
                        'Cadastre-se!',
                        style: TextStyle(
                            color: Color(0xFFF0EC57),
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
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
    );
  }
}
