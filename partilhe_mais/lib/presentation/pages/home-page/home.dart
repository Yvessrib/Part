// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:partilhe_mais/features/crud-user/read_name.dart';
import 'Category_button.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  User? user = FirebaseAuth.instance.currentUser;

  String docIDs = '';
  String role = '';

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
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF1C1C1C),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Color(0xFFF0EC57)),
                        borderRadius: BorderRadius.circular(45)),
                    child: Image.asset(
                      'assets/icons/Ellipse 2.png',
                      height: 83,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('Profile');
                  },
                ),
                Column(
                  children: [
                    Text(
                      'Bem vindo, partilhador!',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    FutureBuilder(
                      future: getDocId(),
                      builder: ((context, snapshot) {
                        return GetUserName(
                            documentId: docIDs,
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white));
                      }),
                    ),
                    Text(
                      'Doador Nível 3',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Patrocinadores: ",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Container(
                height: 100,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: InkWell(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45)),
                      width: 88,
                      child: Image.asset(
                        'assets/icons/emp4.png',
                      ),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45)),
                            width: 88,
                            child: Image.asset('assets/icons/emp2.png'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45)),
                            width: 88,
                            child: Image.asset('assets/icons/emp3.png'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45)),
                            width: 88,
                            child: Image.asset('assets/icons/emp1.png'))),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    filled: true,
                    fillColor: Color(0xFFF0EC57),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1),
                    ),
                    hintText: 'Pesquise uma instituição...',
                    hintStyle: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 27,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Categorias',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Category_button(
                      onPressed: () {
                        Navigator.of(context).pushNamed('ListCategory');
                      },
                      buttonColor: Color(0xFFF55050),
                      buttonText: 'Saúde',
                      iconPath: 'assets/icons/heart-beat.png',
                    ),
                    Category_button(
                      onPressed: () {},
                      buttonColor: Color(0xFF3995C8),
                      buttonText: 'Educação',
                      iconPath: 'assets/icons/pen.png',
                    ),
                    Category_button(
                      onPressed: () {},
                      buttonColor: Color(0xFFF6B028),
                      buttonText: 'Animais',
                      iconPath: 'assets/icons/pawprint.png',
                    ),
                    Category_button(
                      onPressed: () {},
                      buttonColor: Color(0xFFFF00B8),
                      buttonText: 'LGBTQIAP+',
                      iconPath: 'assets/icons/rainbow-flag.png',
                    ),
                    Category_button(
                      onPressed: () {},
                      buttonColor: Color(0xFF0A8216),
                      buttonText: 'Meio Ambiente',
                      iconPath: 'assets/icons/forest.png',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
