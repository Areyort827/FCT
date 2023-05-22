class Factories {
  String name;
  int campaignStart;
  String mqtt;

  Factories({
    required this.name,
    required this.campaignStart,
    required this.mqtt,
  });

  factory Factories.fromJson(Map json) {
    return Factories(
      name: json["name"],
      campaignStart: json["campaignStart"],
      mqtt: json["mqtt"],
    );
  }
}
