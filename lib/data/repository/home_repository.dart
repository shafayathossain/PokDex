import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokemon_index/data/model/request/query_species_types.dart';
import 'package:pokemon_index/data/model/response/pokemon.dart';
import 'package:pokemon_index/data/model/response/Species_types_response.dart';
import 'package:pokemon_index/data/remote_data_source/pokemon_remote_data_source.dart';

class HomeRepository {

  final PokemonRemoteDataSource _remoteDataSource;

  /// Constructor
  HomeRepository(this._remoteDataSource);

  Future<List<Pokemon>> getPokemonSpeciesList() {
    QueryOptions<SpeciesTypesResponse> queryOption = QueryOptions(
      document: gql(QuerySpeciesTypes().toString()),
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      parserFn: (Map<String, dynamic> response) =>
          SpeciesTypesResponse.fromJson(response),
    );

    return _remoteDataSource.getSpeciesTypes(queryOption)
        .then((value) {
          return value.parsedData?.pokemons ?? List<Pokemon>.empty();
    });
  }
}