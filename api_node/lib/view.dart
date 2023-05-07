import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

 /*
class View extends ChangeNotifier {

  String _baseUrl = 'localhost:8080';
  String _authorization = 'eyJhbGciOiJIUzI1NiJ9.bWFyaW8uZGVscmlvQHByb2Npc2EuZXM.1sXWglScJ0iWdy4A8fLDYdTFU1ESf1WYoeCdZBlHTAs';
  View() {
    print('ListView Factory iniciando');

    this.getFactory();
  }
  
 getFactory() async {

  var url = Uri.https(_baseUrl,'/factories',{
   'authorization' : _authorization
  }
   );

   final response = await http.get(url);
   if(response.statusCode!= 200 ) return print('error');
   print(response.body);
 }

  
}
*/