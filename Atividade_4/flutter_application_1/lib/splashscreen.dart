import 'dart:async'; //para usar a classe Timer
import 'package:flutter/material.dart';
import 'circular_image_widget.dart';
import 'myhomepage.dart';

class SplashScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Agenda de aniversarios',)));
    });
    // O AssetImage é um provider, que é o responsável por obter uma imagem,
    // tendo como base seu endereço (url).
    //Esse endereço deve ser registrado no pubspec.yaml

    //O codigo abaixo cria uma anaimação
    //Padding reserva espaço na área interna do container onde o widget será exibido
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularImageWidget(
                imageProvider: AssetImage('images/shreklogo.png'),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 25),
                  child: const Text('Aguarde ...',
                      style: TextStyle(
                        color: Color.fromARGB(255, 21, 240, 32),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ))),
              Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: LinearProgressIndicator(
                    backgroundColor: Color.fromARGB(255, 8, 155, 32),
                    valueColor: AlwaysStoppedAnimation(Color.fromARGB(255, 190, 240, 9)),
                  ))
            ]));
  }
}
