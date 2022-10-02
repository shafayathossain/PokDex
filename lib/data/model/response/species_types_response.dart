import 'package:pokemon_index/data/model/response/pokemon.dart';

class SpeciesTypesResponse {

  late List<Pokemon> pokemons;

  SpeciesTypesResponse({
    required this.pokemons,
  });

  SpeciesTypesResponse.fromJson(Map<String, dynamic> json) {
    if(json['pokemons'] != null && json['pokemons']["results"] != null) {
      Iterable result = json['pokemons']["results"];
      List<Pokemon> tempPokemon = List<Pokemon>.from(result.map((e) => Pokemon.fromJson(e)));
      pokemons = tempPokemon;
    } else {
      pokemons =  List<Pokemon>.empty();
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pokemons'] = pokemons;
    return map;
  }
}
