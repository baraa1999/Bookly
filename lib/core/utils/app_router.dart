import 'package:bookly/Features/home/presention/views/book_details_view.dart';
import 'package:bookly/Features/home/presention/views/home_view.dart';
import 'package:bookly/Features/search/presentions/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../presentions/views/splach_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/searchView';
  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
