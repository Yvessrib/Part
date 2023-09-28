// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/components/button.dart';

// ignore: use_key_in_widget_constructors
class Config extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConfigState();
  }
}

class ConfigState extends State<Config> {
  User? user = FirebaseAuth.instance.currentUser;

  String docIDs = '';

  Future getDocId() async {
    await FirebaseFirestore.instance
        .collection('Users')
        .where('email', isEqualTo: user?.email)
        .get()
        .then(
          (snapshot) => snapshot.docs.forEach((document) {
            print(document.reference);
            docIDs = document.reference.id;
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Stack(children: [
            Image.asset(
              'assets/images/header.png',
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/images/setinha.png')),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Partilhe+',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Raleway',
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 102, horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Configurações',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Raleway',
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 27),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: button,
                    onPressed: () {
                      Navigator.of(context).pushNamed('UserUpdate');
                    },
                    child: Text("Editar Informações",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontSize: 24,
                            fontWeight: FontWeight.w600))),
                SizedBox(height: 27),
                ElevatedButton(
                    style: button,
                    onPressed: () async {
                      FirebaseAuth.instance.currentUser?.delete();
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text("Apagar Conta",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontSize: 24,
                            fontWeight: FontWeight.w600))),
                SizedBox(height: 27),
                ElevatedButton(
                    style: button,
                    onPressed: () {
                      FirebaseAuth.instance.signOut().then((value) {
                        Navigator.of(context).pushNamed('/');
                      });
                    },
                    child: Text("Deslogar",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontSize: 24,
                            fontWeight: FontWeight.w600))),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
