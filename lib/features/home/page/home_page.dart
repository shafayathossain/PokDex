import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:pokemon_index/features/home/bloc/home_bloc.dart';
import 'package:pokemon_index/features/home/bloc/home_event.dart';
import 'package:pokemon_index/features/home/bloc/home_state.dart';
import 'package:pokemon_index/features/home/widgets/item_pokemon.dart';

class HomePage extends StatelessWidget {
  final KiwiContainer _kiwiContainer = KiwiContainer();
  final ScrollController scrollController = ScrollController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("PokDex"),
      ),
      body: BlocProvider(
        create: (_) => _kiwiContainer.resolve<HomeBloc>(),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is PokemonSpeciesListState) {
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  controller: scrollController,
                  itemCount: state.speciesList.length + 1,
                  itemBuilder: (context, itemIndex) {
                    if (itemIndex < state.speciesList.length) {
                      return ItemPokemon(pokemon: state.speciesList[itemIndex]);
                    } else {
                      context.read<HomeBloc>().add(LoadMoreHomeEvent(
                            lastShowedId: state.speciesList.last.id,
                          ));
                      return const CircularProgressIndicator();
                    }
                  });
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
