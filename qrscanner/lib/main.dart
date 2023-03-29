import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/providers/ui_provider.dart';
import 'package:qrscanner/screens/home_page.dart';
import 'package:qrscanner/screens/mapa_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => new UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => home(),
          'mapa': (_) => mapa(),
        },
        theme: ThemeData(
            primaryColor: Colors.redAccent,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: Colors.redAccent),
            appBarTheme: AppBarTheme(backgroundColor: Colors.redAccent),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.redAccent)),
      ),
    );
  }
}
