import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'splashscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda de aniversarios',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 3, 63, 13)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}




