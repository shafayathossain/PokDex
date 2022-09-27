import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokemon_index/data/model/response/Species_types_response.dart';

class PokemonRemoteDataSource {
  PokemonRemoteDataSource(this._client);

  final GraphQLClient _client;

  /**
   * Example query options:
   * QueryOptions<SpeciesTypesResponse> queryOption = QueryOptions(
      document: gql("<query string here>"),
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      parserFn: (Map<String, dynamic> response) =>
      SpeciesTypesResponse.fromJson(response),
    );
   */
  Future<QueryResult<SpeciesTypesResponse?>> getSpeciesTypes(
    QueryOptions<SpeciesTypesResponse> queryOptions,
  ) {
    return _client.query(queryOptions);
  }
}
