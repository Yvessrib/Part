// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/components/auth_check.dart';
import 'package:partilhe_mais/presentation/pages/home-page/home.dart';
import 'package:partilhe_mais/presentation/pages/list-category-page/list-category.dart';
import 'package:partilhe_mais/presentation/pages/signin-page/signin.dart';
import 'package:partilhe_mais/presentation/pages/signup-page/signup_1.dart';
import 'package:partilhe_mais/presentation/pages/signup-page/signup_2.dart';
import 'package:partilhe_mais/presentation/pages/start-page/start.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:partilhe_mais/presentation/pages/user-profile-page/user-profile.dart';
import 'package:partilhe_mais/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (Context) => AuthService())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Partilhe +',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Start(),
        'SignIn': (context) => SignIn(),
        'Home': (context) => Home(),
        'Auth': (context) => const AuthCheck(),
        'SignUp1': (context) => SignUp1(),
        'SignUp2': (context) => SignUp2(),
        'ListCategory': (context) => ListCategory(),
        'UserPage':(context) => UserPage(),
      },
    );
  }
}
