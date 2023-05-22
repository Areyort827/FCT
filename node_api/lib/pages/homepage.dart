import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:node_api/model/factories.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = Uri.parse("http://localhost:8080/factories");
  late Future<List<Factories>> factories;
  final headers = {
    'authorization':
        'eyJhbGciOiJIUzI1NiJ9.bWFyaW8uZGVscmlvQHByb2Npc2EuZXM.1sXWglScJ0iWdy4A8fLDYdTFU1ESf1WYoeCdZBlHTAs'
  };
  //late Future<Factories> factories;
  final name = TextEditingController();
  final campaignStart = TextEditingController();
  final mqtt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory App'),
        backgroundColor: Color.fromARGB(255, 12, 48, 3),
      ),
      backgroundColor: Color.fromARGB(255, 12, 48, 3),
      body: FutureBuilder(
          future: factories,
          builder: (context, snap) {
            if (snap.hasData) {
              return ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: snap.data!.length,
                itemBuilder: (context, i) {
                  return Card(
                    color: Color.fromARGB(255, 202, 202, 202),
                    child: ListTile(
                        title: Text(snap.data![i].name),
                        subtitle: Text(snap.data![i].mqtt),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title:
                                        Center(child: Text(snap.data![i].name)),
                                    content: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: Text(
                                          "Name: " +
                                              snap.data![i].name +
                                              "\n" +
                                              "CampaignStart: " +
                                              snap.data![i].campaignStart
                                                  .toString() +
                                              "\n" +
                                              "Mqtt: " +
                                              snap.data![i].mqtt,
                                          style: TextStyle(),
                                        ))
                                      ],
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 250, 217, 109),
                                  ));
                        }),
                  );
                },
              );
              //const Divider();
            }
            if (snap.hasError) {
              return Center(
                child: Text("Ups ha habido un error: ${snap.error}"),
              );
            }

            return const CircularProgressIndicator();
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: showForm,
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber[400],
      ),
    );
  }

  void showForm() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 202, 202, 202),
            title: const Text("Agregar Factory"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name,
                  decoration: const InputDecoration(hintText: "Name"),
                ),
                TextField(
                  //keyboardType: TextInputType.emailAddress,
                  controller: campaignStart,
                  decoration: const InputDecoration(hintText: "CampaignStart"),
                ),
                TextField(
                  //keyboardType: TextInputType.emailAddress,
                  controller: mqtt,
                  decoration: const InputDecoration(hintText: "Mqtt"),
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {
                  saveFactory();
                  Navigator.of(context).pop();
                },
                child: const Text("Guardar"),
              )
            ],
          );
        });
  }

  @override
  void initState() {
    super.initState();
    factories = getFactories();
  }

  Future<List<Factories>> getFactories() async {
    final res = await http.get(url, headers: {
      'authorization':
          'eyJhbGciOiJIUzI1NiJ9.bWFyaW8uZGVscmlvQHByb2Npc2EuZXM.1sXWglScJ0iWdy4A8fLDYdTFU1ESf1WYoeCdZBlHTAs'
    });
    final lista = List.from(jsonDecode(res.body));

    List<Factories> factories = [];
    lista.forEach((element) {
      final Factories f = Factories.fromJson(element);
      factories.add(f);
    });
    return factories;
    /*if (res.statusCode == 200) {
      return item;
    }
    return Future.error('No se pudo cargar la informacion de usuario');*/
  }

  void saveFactory() async {
    final factories2 = {
      "name": name.text,
      "campaignStart": campaignStart.text,
      "mqtt": mqtt.text
    };
    await http.post(url, headers: headers, body: jsonEncode(factories2));
    name.clear();
    campaignStart.clear();
    mqtt.clear;
    setState(() {
      factories = getFactories();
    });
  }
}
