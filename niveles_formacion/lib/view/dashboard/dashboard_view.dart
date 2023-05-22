import 'dart:html';

import 'package:flutter/material.dart';
import 'package:niveles_formacion/data/model/dashboard_panel_item/dashboard_panel_item.dart';
import 'package:niveles_formacion/items/item_lineargauge.dart';
import 'package:niveles_formacion/view/dashboard/dashboard_viewmodel.dart';
import 'package:niveles_formacion/view/dashboard_item/dashboard_item_view.dart';
import 'package:niveles_formacion/widgets/radialgauge.dart';
import 'package:stacked/stacked.dart';
import 'package:dashboard/dashboard.dart';

import '../../data/model/dashboard_panel_item_level/dashboard_panel_item_level_options.dart';

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
              itemBuilder: (item) => item_lineargauge(item),

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
              child: const Icon(Icons.calendar_month),
              onPressed: () => viewModel.addElement()),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              child: const Icon(Icons.slideshow_outlined),
              onPressed: () => viewModel.addElement2()),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
              child: const Icon(Icons.radar_sharp),
              onPressed: () => viewModel.addElement3()),
        ],
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(BuildContext context) =>
      DashboardViewModel();
}

class _addelement extends StatelessWidget {
  List<String> listaDeOpciones = <String>["A", "B", "C", "D", "E", "F", "G"];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownButtonFormField(
            items: listaDeOpciones.map((e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,
              );
            }).toList(),
            onChanged: (String? value) {}));
  }
}

/*
  child: Dashboard<DashboardPanelItem>(
              editModeSettings: EditModeSettings(resizeCursorSide: 10),
              itemBuilder: (item) => DashboardItemView(item),

              //itemBuilder: (item) => DashboardItemView(item),
              dashboardItemController: viewModel.dashboardItemController)
              */