class SpeciesTypesResponse {

  late Data data;

  SpeciesTypesResponse({
    required this.data,
  });

  SpeciesTypesResponse.fromJson(dynamic json) {
    data = json['data'] != null
        ? Data.fromJson(json['data'])
        : Data.fromJson(<String, dynamic>{});
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['data'] = data.toJson();
    return map;
  }
}

class Data {

  late List<String> getAllPokemonSpecies;

  Data({
    required this.getAllPokemonSpecies,
  });

  Data.fromJson(Map<String, dynamic> json) {
    getAllPokemonSpecies = json['getAllPokemonSpecies'] != null
        ? json['getAllPokemonSpecies'].cast<String>()
        : [];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['getAllPokemonSpecies'] = getAllPokemonSpecies;
    return map;
  }
}
