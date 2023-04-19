import 'package:dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item/dashboard_panel_item.dart';
import 'package:niveles_formacion/view/dashboard_item/dashboard_item_view.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LinearGauge extends DashboardItemView {
  const LinearGauge(super.item, {super.key});

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
