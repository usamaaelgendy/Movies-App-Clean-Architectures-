class ApiConstance {
  static const String baseUrl = "https://api.themoviedb.org/3";
  // Pass your own TMDB key at build time:
  // flutter run --dart-define=TMDB_API_KEY=<your_key>
  static const String apiKey = String.fromEnvironment('TMDB_API_KEY');

  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$apiKey";

  static String movieDetailsPath(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$apiKey";

  static String recommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}
