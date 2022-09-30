import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:pokemon_index/features/home/bloc/home_bloc.dart';
import 'package:pokemon_index/features/home/bloc/home_event.dart';
import 'package:pokemon_index/features/home/bloc/home_state.dart';

class HomePage extends StatelessWidget {
  KiwiContainer _kiwiContainer = KiwiContainer();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _kiwiContainer.resolve<HomeBloc>(),
      child: Builder(

        builder: (context) {
          print("Builder called");
          context.read<HomeBloc>().add(HomeEvent());
          return BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Container(color: Colors.amberAccent, height: 100, width: 100,);
            },
          );
        },
      )
    );
  }

}