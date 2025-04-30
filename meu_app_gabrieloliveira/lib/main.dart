import 'package:flutter/material.dart';
import 'package:meu_app_gabrieloliveira/views/homescreen.dart';
import 'package:meu_app_gabrieloliveira/views/screen02.dart';
import 'package:meu_app_gabrieloliveira/views/screen03.dart';
import 'package:meu_app_gabrieloliveira/views/screen04.dart';
import 'package:meu_app_gabrieloliveira/views/screen05.dart';

void main() {
  runApp(const MeuAppGabrielOliveira());
}

class MeuAppGabrielOliveira extends StatelessWidget {
  const MeuAppGabrielOliveira({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avaliação P1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const Screen02(),
        '/third': (context) => const Screen03(),
        '/fourth': (context) => const Screen04(),
        '/fifth': (context) => const Screen05(),
      },
    );
  }
}
