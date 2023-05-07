import 'package:api_node/view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp( MyApp());
}

/*
class AppState extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => View(), lazy: false,)
      ],
      child: MyApp(),
    );
  }
}
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  List<Widget> widgets = [
    ListTile(
      title: Text('Factory'),
    ),
    Text('S'),
    Text('S'),

  ];
  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(
            color: Colors.amber,
            child: ListTile(
              title: Text("Factory"),
            ),
          ),
          Card(
            color: Colors.amber,
            child: ListTile(
              title: Text("Campoagro"),
              onTap:(){
               showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Name: Campoagro\nCampaignStart: No\nMqtt: hermes.grupoproci.eu'),
                )
              );
              } 
            ),
          ),
          Card(
            color: Colors.amber,
            child: ListTile(
              title: Text("Procisa Test"),
              onTap:(){
               showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Name: Procisa Test\nCampaignStart: No\nMqtt: hermes.grupoproci.eu'),
                )
              );
              } 
            ),
          ),
        ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
