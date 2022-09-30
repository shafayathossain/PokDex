class SpeciesTypesResponse {

  late List<String> getAllPokemonSpecies;

  SpeciesTypesResponse({
    required this.getAllPokemonSpecies,
  });

  SpeciesTypesResponse.fromJson(Map<String, dynamic> json) {
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
