import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class linear extends StatefulWidget {
  const linear({super.key});
  @override
  State<linear> createState() => _linearState();
}

class _linearState extends State<linear> {
  double _numero = 0;
  int _contador = 5;
  Timer? timer1;
  Timer? timer2;

  Color _fondo = Colors.red;

  void reiniciar() {
    timer1?.cancel();
    timer2?.cancel();
    _contador = 5;
    _numero = 0;
    setState(() {});
  }

  void contador() {
    timer1 = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_contador == 1) {
        _contador = 5;
      } else {
        _contador--;
      }
      setState(() {});
    });

    //_numero = 20;
  }

  void changeState() {
    timer2 = Timer.periodic(const Duration(seconds: 5), (timer) {
      final random = Random();
      _numero = random.nextInt(100).toDouble() + 1;

      setState(() {});
    });

    //_numero = 20;
  }

  @override
  Widget build(BuildContext context) {
    //margin:
    //EdgeInsets.symmetric(horizontal: 100, vertical: 100);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$_contador"),
          gauge(numero: _numero),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        FloatingActionButton(
            child: const Icon(Icons.play_circle),
            onPressed: () {
              changeState();
              contador();
            }),
        FloatingActionButton(
            child: const Icon(Icons.stop),
            onPressed: () {
              reiniciar();
            })
      ]),

      /*
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_circle),
          onPressed: () {
            changeState();
            contador();
          }),
*/
      //lineargauge(numero: _numero),
    );
  }
}

class gauge extends StatelessWidget {
  const gauge({
    super.key,
    required double numero,
  }) : _numero = numero;

  final double _numero;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: SfLinearGauge(
          minorTicksPerInterval: 4,
          useRangeColorForAxis: true,
          animateAxis: true,
          axisTrackStyle: LinearAxisTrackStyle(thickness: 1),
          ranges: <LinearGaugeRange>[
            LinearGaugeRange(
              startValue: 0,
              endValue: 33,
              position: LinearElementPosition.inside,
              color: Colors.yellow,
            ),
            LinearGaugeRange(
              startValue: 33,
              endValue: 66,
              position: LinearElementPosition.inside,
              color: Colors.orange,
            ),
            LinearGaugeRange(
              startValue: 66,
              endValue: 100,
              position: LinearElementPosition.inside,
              color: Colors.red,
            )
          ],
          minimum: 0,
          maximum: 100,
          markerPointers: [
            LinearShapePointer(
              value: _numero,
              // color: Colors.blue,
            )
          ],
          // barPointers: [LinearBarPointer(value: _numero)],
        ),
      ),
    );
  }
}
