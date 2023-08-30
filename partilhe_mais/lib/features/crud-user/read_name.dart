// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String documentId;

  GetUserName({required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Users');
    
    if (documentId == '') {
      return Text('loading');
    }
    
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text('${data['name']}',
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white));
        }
        return Text("loading");
      }),
    );
  }
}
