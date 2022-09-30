
import 'package:kiwi/kiwi.dart';
import 'package:pokemon_index/di/bloc_module.dart';
import 'package:pokemon_index/di/data_source_module.dart';
import 'package:pokemon_index/di/repository_module.dart';

class AppModule {
  static void configure() {
    DataSourceModule.configure();
    RepositoryModule.configure();
    BlocModule.configure();
  }
}