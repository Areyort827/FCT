import 'package:dashboard/dashboard.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item/dashboard_panel_item.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item_level/dashboard_panel_item_level.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item_level/dashboard_panel_item_level_options.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  final DashboardItemController<DashboardPanelItem> dashboardItemController =
      DashboardItemController(items: [DashboardPanelItemLevel(identifier: "uniqueIdentifier",height: 2, width: 2, panelOptions: DashboardPanelItemLevelOptions(uid: 'optionsIdentifier'))]);

  void changeEditMode() {
    dashboardItemController.isEditing = !dashboardItemController.isEditing;
    notifyListeners();
  }
}
