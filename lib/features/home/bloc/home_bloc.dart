import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_index/data/model/response/pokemon.dart';
import 'package:pokemon_index/data/repository/home_repository.dart';
import 'package:pokemon_index/features/home/bloc/home_event.dart';
import 'package:pokemon_index/features/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final HomeRepository _repository;

  HomeBloc(this._repository): super(HomeEmptyState()) {
    on<HomeEvent>((event, emitter) async {
      await _fetchSpeciesList(event, emitter);
    });
  }

  Future <void> _fetchSpeciesList(HomeEvent event, Emitter<HomeState> emit) async {
    List<Pokemon> speciesList = await _repository.getPokemonSpeciesList();
    emit(PokemonSpeciesListState(speciesList));
  }

}