import 'package:kiwi/kiwi.dart';
import 'package:pokemon_index/data/remote_data_source/pokemon_remote_data_source.dart';
import 'package:pokemon_index/data/repository/home_repository.dart';

void provideHomeRepository(KiwiContainer container) {
  container.registerSingleton(
    (container) => HomeRepository(container.resolve<PokemonRemoteDataSource>()),
    name: "remote_data_source",
  );
}
