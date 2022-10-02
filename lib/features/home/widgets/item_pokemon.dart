import 'package:flutter/material.dart';
import 'package:pokemon_index/data/model/response/pokemon.dart';

class ItemPokemon extends StatelessWidget {
  final Pokemon pokemon;

  const ItemPokemon({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(
              pokemon.image,
              height: 100,
            ),
            Text(pokemon.name)
          ],
        ),
      ),
    );
  }
}
