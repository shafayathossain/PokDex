import 'package:kiwi/kiwi.dart';
import 'package:pokemon_index/data/repository/home_repository.dart';
import 'package:pokemon_index/features/home/bloc/home_bloc.dart';

class BlocModule {
  static void configure() {
    _configureFactories();
  }

  static void _configureFactories() {
    KiwiContainer kiwiContainer = KiwiContainer();
    kiwiContainer.registerFactory(
        (container) => HomeBloc(container.resolve<HomeRepository>()));
  }
}
