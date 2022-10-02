import 'package:pokemon_index/data/model/response/pokemon.dart';

abstract class HomeState { }

class HomeEmptyState extends HomeState {}

class PokemonSpeciesListState extends HomeState {
  List<Pokemon> speciesList = [];

  PokemonSpeciesListState(this.speciesList);
}