// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserRole extends StatelessWidget {
  final String documentId;

  GetUserRole({required this.documentId});

  @override
  Widget build(BuildContext context) {
    String role;
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
          if (data['role'] == 'doador') {
            role = 'doador';
          } else {
            role = 'ong';
          }
            return Text(role);
        }
        return Text("loading");
      }),
    );
  }
}
