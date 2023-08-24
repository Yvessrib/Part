import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/pages/home-page/home.dart';
import 'package:partilhe_mais/presentation/pages/signin-page/signin.dart';
import 'package:provider/provider.dart';
import '../../services/auth_service.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({super.key});

  @override
  State<AuthCheck> createState() => AuthCheckState();
}

class AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isloading) {
      return loading();
    } else {
      if (auth.usuario == null) {
        return SignIn();
      } else {
        return Home();
      }
    }
  }

  loading() {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
