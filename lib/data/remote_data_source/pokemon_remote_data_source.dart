
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kiwi/kiwi.dart';

class PokemonRemoteDataSource {
  PokemonRemoteDataSource(this._client);
  GraphQLClient _client;
}