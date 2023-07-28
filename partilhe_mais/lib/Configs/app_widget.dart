import 'package:flutter/material.dart';
import 'package:partilhe_mais/Configs/app_controller.dart';
import 'package:partilhe_mais/presentation/pages/start-page/start.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          title: 'Partile +',
          home: Start(),
        );
      },
    );
  }
}
