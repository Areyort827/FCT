import 'package:flutter/material.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item/dashboard_panel_item.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGauge extends DashboardPanelItem {
  RadialGauge({
    required super.width,
    required super.height,
    required super.identifier,
    required super.panelOptions,
  });

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: SfRadialGauge(),
          ),
        ),
      ),
    );
  }
}
