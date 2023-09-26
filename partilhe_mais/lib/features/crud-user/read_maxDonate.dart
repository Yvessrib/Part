// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserMaxDonate extends StatelessWidget {
  final String documentId;
  TextStyle style;

  GetUserMaxDonate({required this.documentId,required this.style});

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
          return Text('${data['cpf']}',
              style: style,);
        }
        return Text("loading");
      }),
    );
  }
}
