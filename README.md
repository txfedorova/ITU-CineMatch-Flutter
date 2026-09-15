# ITU / CineMatch Flutter App

University team project built with Flutter and Dart. CineMatch helps multiple local users choose a movie by swiping through available films and comparing their preferences.

## Project overview

The application stores users, films, comments and swipe choices in a local SQLite database. Films can be searched through The Movie Database (TMDB) API and added to the local collection. Each user can then browse films and mark them as liked or disliked, while the results screen calculates the film with the highest share of positive votes.

## Main features

- local user creation and selection
- movie search through the TMDB API
- storage of movie metadata and poster images
- swipe-based film selection
- per-user like / dislike tracking
- best-match calculation from user votes
- local comments for individual films
- persistent SQLite storage
- navigation between film gallery, film list, comments and results screens

## Tech stack

- Dart / Flutter
- Provider for application state
- GoRouter for navigation
- SQLite via `sqflite`
- TMDB API for movie search and metadata
- `flutter_card_swiper` for swipe interaction
- HTTP and local file storage for poster images

## TMDB configuration

TMDB credentials are not stored in the repository. The application reads them from Dart build-time variables:

- `TMDB_API_KEY`
- `TMDB_READ_ACCESS_TOKEN`

Run the app with your own TMDB credentials:

```bash
flutter run \
  --dart-define=TMDB_API_KEY=<your-api-key> \
  --dart-define=TMDB_READ_ACCESS_TOKEN=<your-read-access-token>
```

The application validates that both values are present before creating the TMDB client.

## Run locally

Install Flutter dependencies:

```bash
flutter pub get
```

Then run the application with the TMDB configuration shown above.

## Project structure

```text
lib/
├── common/        # reusable film UI widgets
├── config/        # build-time application configuration
├── controller/    # film, user, comment and user-film controllers
├── model/         # SQLite-backed data models and database helper
├── view/          # application screens
└── main.dart
```

The project also contains standard Flutter platform directories for Android and iOS together with the original coursework assets and configuration files.
