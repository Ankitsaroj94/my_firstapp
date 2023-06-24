// ignore_for_file: avoid_unnecessary_containers

import'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key:key);
@override
Widget build(BuildContext context) {
  return MaterialApp(
  home:Material(
    child: Center(
      child: Container(
        child: const Text("hello My name is Ankit "),
      ),
    ),
  ),
  );
}
}
