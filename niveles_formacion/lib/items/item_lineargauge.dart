import 'package:flutter/material.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item/dashboard_panel_item.dart';
import 'package:niveles_formacion/view/dashboard_item/dashboard_item_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/widgets.dart';
import 'package:niveles_formacion/widgets/widgets.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class item_lineargauge extends StackedView {
  const item_lineargauge(this.item, {super.key});

  final DashboardPanelItem item;

  @override
  Widget builder(
      BuildContext context, ChangeNotifier viewModel, Widget? child) {
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

  @override
  ChangeNotifier viewModelBuilder(BuildContext context) =>
      DashboardItemViewModel();
}
