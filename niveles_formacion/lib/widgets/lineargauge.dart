import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LinearGauge extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(  
        body: Center(  
          child: Container(  
            padding: EdgeInsets.all(20),
            child: SfLinearGauge(),
          ),
        ),
      ),
    );
  }
}