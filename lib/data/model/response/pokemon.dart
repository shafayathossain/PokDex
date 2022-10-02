class Pokemon {
  Pokemon({
      required this.name,
      required this.id,
      required this.image,});

  Pokemon.fromJson(dynamic json) {
    name = json['name'];
    id = json['id'];
    image = json['image'];
  }
  late String name;
  late int id;
  late String image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['id'] = id;
    map['image'] = image;
    return map;
  }

}