import 'package:flutter/material.dart';
import 'package:parcial2_etps3/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tortas El Sarco Parcial 2',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(226, 127, 93, 196),
      ),
      home: HomePage(),
    );
  }
}
