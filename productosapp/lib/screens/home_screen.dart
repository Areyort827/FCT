import 'package:flutter/material.dart';
import 'package:productosapp/widgets/product_card.dart';
import 'package:flutter/widgets.dart';
import 'package:productosapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
  List<String> listaDeOpciones = <String>["Opcion 1", "Opcion 2", "Opcion 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'product'),
              child: ProductCard())),
      floatingActionButton: FloatingActionButton(
        child: AddElement(), //Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

/*
ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'product'),
              child: ProductCard())),
*/