import 'dart:html';

import 'package:flutter/material.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item/dashboard_panel_item.dart';
import 'package:niveles_formacion/view/dashboard/dashboard_viewmodel.dart';
import 'package:niveles_formacion/view/dashboard_item/dashboard_item_view.dart';
import 'package:niveles_formacion/widgets/radialgauge.dart';
import 'package:stacked/stacked.dart';
import 'package:dashboard/dashboard.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({super.key});
  //DashboardItem a = DashboardItem(width: 2, height: 2, identifier: "a");

  @override
  Widget builder(
      BuildContext context, DashboardViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Center(
          child: Dashboard<DashboardPanelItem>(
              editModeSettings: EditModeSettings(resizeCursorSide: 10),
              itemBuilder: (item) => DashboardItemView(item),

              //itemBuilder: (item) => DashboardItemView(item),
              dashboardItemController: viewModel.dashboardItemController)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.edit),
              onPressed: () => viewModel.changeEditMode()),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => viewModel.addElement()),
        ],
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(BuildContext context) =>
      DashboardViewModel();
}

/*
  child: Dashboard<DashboardPanelItem>(
              editModeSettings: EditModeSettings(resizeCursorSide: 10),
              itemBuilder: (item) => DashboardItemView(item),

              //itemBuilder: (item) => DashboardItemView(item),
              dashboardItemController: viewModel.dashboardItemController)
              */