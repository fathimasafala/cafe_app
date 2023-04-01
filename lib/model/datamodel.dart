class Datamodel {
  String name;
  String date;
  String description;

  String image_url;

  Datamodel({
    required this.name,
    required this.date,
    required this.description,
    required this.image_url,
  });

  factory Datamodel.fromJson(Map<String, dynamic> json) {
    print("name" + json["name"]);
    return Datamodel(
      name: json["name"],
      date: json["date"],
      description: json["description"],
      image_url: json["image_url"],
    );
  }
}
