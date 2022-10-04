import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_index/data/model/response/pokemon.dart';
import 'package:pokemon_index/data/repository/home_repository.dart';
import 'package:pokemon_index/features/home/bloc/home_event.dart';
import 'package:pokemon_index/features/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final List<Pokemon> _listOfPokemons = List.empty(growable: true);
  final HomeRepository _repository;
  int _lastPokemonShowedId = 0;

  HomeBloc(this._repository) : super(HomeEmptyState()) {
    on<InitialLoadEvent>((event, emitter) async {
      await _fetchSpeciesList(emitter);
    });
    on<LoadMoreHomeEvent>((event, emitter) async {
      await _fetchMoreSpeciesList(emitter, event.lastShowedId);
    });
    add(InitialLoadEvent());
  }

  Future<void> _fetchSpeciesList(Emitter<HomeState> emit) async {
    List<Pokemon> speciesList = await _repository.getPokemonSpeciesList(0);
    _listOfPokemons.addAll(speciesList);
    emit(PokemonSpeciesListState(_listOfPokemons));
  }

  Future<void> _fetchMoreSpeciesList(
      Emitter<HomeState> emit, int lastShowedId) async {
    if (_lastPokemonShowedId != lastShowedId) {
      _lastPokemonShowedId = lastShowedId;
      List<Pokemon> speciesList =
          await _repository.getPokemonSpeciesList(lastShowedId);
      _listOfPokemons.addAll(speciesList);
    }
    emit(PokemonSpeciesListState(_listOfPokemons));
  }
}
