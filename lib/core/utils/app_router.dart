import 'package:bookly/Features/home/presention/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../presentions/views/splach_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
