class TmdbConfig {
  static const String apiKey = String.fromEnvironment(
    'TMDB_API_KEY',
    defaultValue: '',
  );

  static const String readAccessToken = String.fromEnvironment(
    'TMDB_READ_ACCESS_TOKEN',
    defaultValue: '',
  );

  static void validate() {
    if (apiKey.isEmpty || readAccessToken.isEmpty) {
      throw StateError(
        'TMDB credentials are missing. Pass TMDB_API_KEY and '
        'TMDB_READ_ACCESS_TOKEN with --dart-define.',
      );
    }
  }
}
