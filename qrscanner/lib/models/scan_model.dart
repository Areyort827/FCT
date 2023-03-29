// To parse this JSON data, do
//
//     final scanmodel = scanmodelFromJson(jsonString);

import 'dart:convert';

Scanmodel scanmodelFromJson(String str) => Scanmodel.fromJson(json.decode(str));

String scanmodelToJson(Scanmodel data) => json.encode(data.toJson());

class Scanmodel {
  Scanmodel({
    required this.id,
    required this.tipo,
    required this.valor,
  });

  int id;
  String tipo;
  String valor;

  factory Scanmodel.fromJson(Map<String, dynamic> json) => Scanmodel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
