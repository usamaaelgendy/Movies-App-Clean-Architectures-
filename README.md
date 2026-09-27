# Movies App — Flutter Clean Architecture

A Flutter movies app built with Clean Architecture and BLoC, using the
[TMDB API](https://developer.themoviedb.org/docs): now playing, popular and
top-rated lists, movie details and recommendations.

## Architecture

```
lib/
├── core/                 # errors, network constants, service locator, base use case
└── movies/
    ├── data/             # remote data source (Dio), models, repository implementation
    ├── domain/           # entities, repository contract, use cases
    └── presentation/     # BLoCs, screens, components
```

- **Domain** holds the entities, the repository contract and one use case per action.
- **Data** implements the repository with a Dio remote data source and returns
  `Either<Failure, T>` (dartz).
- **Presentation** uses `flutter_bloc`; dependencies are wired with `get_it`.

## Run

The app needs your own TMDB API key (free from your TMDB account settings).
It is read at build time — no key is stored in the repository:

```bash
flutter pub get
flutter run --dart-define=TMDB_API_KEY=<your_tmdb_api_key>
```

## Author

Usama Elgendy — [usamaelgendy.com](https://usamaelgendy.com)
