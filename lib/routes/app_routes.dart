import 'package:flutter/material.dart';
import 'package:musig/presentation/home_page_screen/home_page_screen.dart';
import 'package:musig/presentation/top_playlists_screen/top_playlists_screen.dart';
import 'package:musig/presentation/list_screen/list_screen.dart';
import 'package:musig/presentation/settings_screen/settings_screen.dart';
import 'package:musig/presentation/favorites_screen/favorites_screen.dart';
import 'package:musig/presentation/profile_screen/profile_screen.dart';
import 'package:musig/presentation/artists_screen/artists_screen.dart';
import 'package:musig/presentation/artist_screen/artist_screen.dart';
import 'package:musig/presentation/albums_screen/albums_screen.dart';
import 'package:musig/presentation/album_details_screen/album_details_screen.dart';
import 'package:musig/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePageScreen = '/home_page_screen';

  static const String topPlaylistsScreen = '/top_playlists_screen';

  static const String listScreen = '/list_screen';

  static const String settingsScreen = '/settings_screen';

  static const String favoritesScreen = '/favorites_screen';

  static const String profileScreen = '/profile_screen';

  static const String artistsScreen = '/artists_screen';

  static const String artistScreen = '/artist_screen';

  static const String albumsScreen = '/albums_screen';

  static const String albumDetailsScreen = '/album_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homePageScreen: (context) => HomePageScreen(),
    topPlaylistsScreen: (context) => TopPlaylistsScreen(),
    listScreen: (context) => ListScreen(),
    settingsScreen: (context) => SettingsScreen(),
    favoritesScreen: (context) => FavoritesScreen(),
    profileScreen: (context) => ProfileScreen(),
    artistsScreen: (context) => ArtistsScreen(),
    artistScreen: (context) => ArtistScreen(),
    albumsScreen: (context) => AlbumsScreen(),
    albumDetailsScreen: (context) => AlbumDetailsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
