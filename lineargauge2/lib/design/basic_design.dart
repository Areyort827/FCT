import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        LinearGauge(),
        //Imagen
        //Image(image: AssetImage('assets/landscape.jpg')),

        // Titulo
        //Tittle(),

        // Button Section
        //ButtonSection(),

        // Description
        /*Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
              'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor'),
        ),*/
      ],
    ));
  }
}

class LinearGauge extends StatelessWidget {
  const LinearGauge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Container(
          padding: EdgeInsets.all(20),
          child: SfLinearGauge(
            minimum: 0,
            maximum: 100,
            markerPointers: [
              LinearShapePointer(
                value: 40,
                color: Colors.blue,
              )
            ],
            barPointers: [LinearBarPointer(value: 40)],
          ),
        )),
      ),
    );
  }
}

/*
class MyHomePage extends StatelessElement {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Container(
          padding: EdgeInsets.all(20),
          child: SfLinearGauge(
            minimum: 0,
            maximum: 100,
            markerPointers: [
              LinearShapePointer(
                value: 40,
                color: Colors.blue,
              )
            ],
            barPointers: [LinearBarPointer(value: 40)],
          ),
        )),
      ),
    );
  }
}*/
