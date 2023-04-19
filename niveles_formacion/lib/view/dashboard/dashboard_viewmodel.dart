import 'package:dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item/dashboard_panel_item.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item_level/dashboard_panel_item_level.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item_level/dashboard_panel_item_level_options.dart';
import 'package:niveles_formacion/view/dashboard/dashboard_view.dart';
import 'package:niveles_formacion/view/dashboard_item/dashboard_item_view.dart';
import 'package:niveles_formacion/widgets/calendar.dart';
import 'package:niveles_formacion/widgets/lineargauge.dart';
import 'package:niveles_formacion/widgets/radialgauge.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  String selectedWidget = "Calendar";

  int i = 1;
  final DashboardItemController<DashboardPanelItem> dashboardItemController =
      DashboardItemController(items: [
    DashboardPanelItemLevel(
        identifier: "unyqueIdentifier",
        height: 2,
        width: 2,
        panelOptions: DashboardPanelItemLevelOptions(uid: 'optionsIdentifier'),
        widget: Calendar()),
  ]);

  void changeEditMode() {
    dashboardItemController.isEditing = !dashboardItemController.isEditing;
    notifyListeners();
  }

/*
  getWidget(DashboardPanelItem item) {
    if (selectedWidget == "Circular Chart") {
      return Calendar(item);
    }
  }
*/
  void addElement() {
    print('si');
    dashboardItemController.add(RadialGauge(
        width: 2,
        height: 2,
        identifier: i.toString(),
        panelOptions: DashboardPanelItemLevelOptions(uid: 'optionsIdentifier'),
        widget: Calendar()));

    i++;
    notifyListeners();
  }
}
