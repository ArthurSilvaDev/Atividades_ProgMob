import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(home: HomeWidget());
 }
}

class HomeWidget extends StatelessWidget {
 Widget build(BuildContext context) {
   return (Text("Hello World"));
 }
}
