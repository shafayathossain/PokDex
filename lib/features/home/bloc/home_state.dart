abstract class HomeState { }

class HomeEmptyState extends HomeState {}

class PokemonSpeciesListState extends HomeState {
  List<String> speciesList = [];

  PokemonSpeciesListState(this.speciesList);
}