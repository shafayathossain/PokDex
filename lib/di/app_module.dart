
import 'package:kiwi/kiwi.dart';
import 'package:pokemon_index/di/data_source_module.dart';

void provideDependencies() {
  KiwiContainer kiwiContainer = KiwiContainer();
  provideGraphqlClient(kiwiContainer);
  provideDataSource(kiwiContainer);
}