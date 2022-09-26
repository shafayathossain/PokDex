import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kiwi/kiwi.dart';
import 'package:pokemon_index/data/remote_data_source/pokemon_remote_data_source.dart';


void provideGraphqlClient(KiwiContainer container) {
  final HttpLink httpLink = HttpLink("https://graphqlpokemon.favware.tech/");

  container.registerSingleton(
        (container) {
      return GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink,
      );
    },
  );
}
void provideDataSource(KiwiContainer container) {
  container.registerSingleton(
      (container) => PokemonRemoteDataSource(container.resolve<GraphQLClient>()),
      name: "remote_data_source"
  );
}