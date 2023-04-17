import 'package:flutter/material.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item/dashboard_panel_item.dart';
import 'package:niveles_formacion/view/dashboard_item/dashboard_item_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/widgets.dart';
import 'package:niveles_formacion/widgets/widgets.dart';

class DashboardItemView extends StackedView {
  const DashboardItemView(this.item, {super.key});

  final DashboardPanelItem item;

  @override
  Widget builder(
      BuildContext context, ChangeNotifier viewModel, Widget? child) {
    return RadialGauge();
  }

  @override
  ChangeNotifier viewModelBuilder(BuildContext context) => DashboardItemViewModel();
}