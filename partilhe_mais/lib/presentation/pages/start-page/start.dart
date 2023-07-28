import 'package:flutter/material.dart';
import 'package:partilhe_mais/presentation/pages/start-page/buttonStart.dart';

// ignore: use_key_in_widget_constructors
class Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Image.asset(
              'assets/images/StartBack.png',
              width: double.infinity,
            ),
            // ignore: prefer_const_constructors
            Text(
              'Comece a doar agora!',
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.white,
                fontSize: 31,
              ),
            ),
            Container(
              width: 292,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 35),
              // ignore: prefer_const_constructors
              child: Text(
                'Faça a diferença na vida de outras pessoas e seja parte da mudança positiva. Comece a doar agora e ajude a transformar vidas. Juntos, podemos fazer a diferença!',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                Navigator.of(context).pushNamed('Auth');
              },
              // ignore: prefer_const_constructors
              child: Text(
                'Partilhe +',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
