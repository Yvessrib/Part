import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/pages/home-page/home.dart';
import 'package:partilhe_mais/presentation/pages/login-page/auth_page.dart';
import 'package:partilhe_mais/presentation/pages/login-page/login.dart';
import 'package:partilhe_mais/presentation/pages/start-page/start.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Partilhe +',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Start(),
        'Login': (context) => Login(),
        'Home': (context) => Home(),
        'Auth': (context) => const AuthPage(),
      },
    );
  }
}
