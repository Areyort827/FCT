import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/providers/ui_provider.dart';
import 'package:qrscanner/screens/direcciones_page.dart';
import 'package:qrscanner/widgets/custom_nagitatorbar.dart';
import 'package:qrscanner/widgets/scan_button.dart';

import 'mapas_page.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () {},
          )
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    // Cambiar para mostrar la pagina respectiva
    switch (currentIndex) {
      case 0:
        return MapasPage();
        break;
      case 1:
        return DireccionesPage();

      default:
        return MapasPage();
    }

    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
