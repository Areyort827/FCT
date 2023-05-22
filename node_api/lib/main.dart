import 'package:flutter/material.dart';
import 'package:node_api/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factories',
      initialRoute: "homepage",
      routes: {
        "homepage": (context) => HomePage(),
      },
    );
  }
}
