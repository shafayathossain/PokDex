import 'package:kiwi/kiwi.dart';
import 'package:pokemon_index/data/remote_data_source/pokemon_remote_data_source.dart';
import 'package:pokemon_index/data/repository/home_repository.dart';

class RepositoryModule {

  static void configure() {
    _provideHomeRepository();
  }

  static void _provideHomeRepository() {
    KiwiContainer container = KiwiContainer();
    container.registerSingleton(
          (container) => HomeRepository(container.resolve<PokemonRemoteDataSource>()),
    );
  }
}
