import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kiwi/kiwi.dart';
import 'package:pokemon_index/data/remote_data_source/pokemon_remote_data_source.dart';

class DataSourceModule {

  static void configure() {
    _provideGraphqlClient();
    _provideDataSource();
  }

  static void _provideGraphqlClient() {
    KiwiContainer container = KiwiContainer();
    final HttpLink httpLink = HttpLink("https://graphql-pokeapi.vercel.app/api/graphql");

    container.registerSingleton(
          (container) {
        return GraphQLClient(
          cache: GraphQLCache(),
          link: httpLink,
        );
      },
    );
  }
  static void _provideDataSource() {
    KiwiContainer container = KiwiContainer();
    container.registerSingleton(
            (container) => PokemonRemoteDataSource(container.resolve<GraphQLClient>()),
    );
  }
}