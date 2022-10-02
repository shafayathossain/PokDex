class QuerySpeciesTypes {
  late final int _lastShowedId;

  QuerySpeciesTypes({int lastShowedId = 0}) {
    _lastShowedId = lastShowedId;
  }

  @override
  String toString() {
    return """
    {
      pokemons(limit: 10, offset: $_lastShowedId) {
        results {
          name
          id
          image
        }
      }
    }
    """;
  }
}