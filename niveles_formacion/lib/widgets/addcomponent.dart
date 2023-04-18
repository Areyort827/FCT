import 'dart:html';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      ListTile(
        leading: const Icon(Icons.pages_outlined),
        title: const Text('LinearGauge'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.people_outlined),
        title: const Text('RadialGauge'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.settings_outlined),
        title: const Text('Calendar'),
        onTap: () {},
      ),
    ]));
  }
}
