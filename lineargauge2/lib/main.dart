import 'dart:math';

import 'package:flutter/material.dart';

import 'package:lineargauge2/widgets/linear.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinearGauge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'linear',
      routes: {'linear': (_) => linear()},
    );
  }
}
