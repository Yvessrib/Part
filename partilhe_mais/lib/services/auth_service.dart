// ignore_for_file: unused_field, prefer_final_fields

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? usuario;
  bool isloading = true;

  AuthService() {
    _authCheck();
  }

  _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      usuario = (user == null) ? null : user;
      isloading = false;
      notifyListeners();
    });
  }

  _getuser() {
    usuario = _auth.currentUser;
    notifyListeners();
  }

  signUp(String email, String senha) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: senha);
      _getuser();
    } on FirebaseAuthException catch (e) {
      if(e.code == 'weak-password'){
        throw AuthException('Senha muito fraca');
      } else if(e.code == 'email-already-in-use'){
        throw AuthException('Email já cadastrado');
      }
    }
  }

  siginIn(String email, String senha) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      _getuser();
    } on FirebaseAuthException catch (e) {
      if(e.code == 'user-not-found'){
        throw AuthException('Email não cadastrado');
      } else if(e.code == 'wrong-password'){
        throw AuthException('Senha incorreta');
      }
    }
  }

  signOut() async {
    await _auth.signOut();
    _getuser();
  }
}
