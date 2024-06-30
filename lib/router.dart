import 'package:amologic_assignment/pages/add_personal_details.dart';
import 'package:amologic_assignment/pages/chats.dart';
import 'package:amologic_assignment/pages/favourites.dart';
import 'package:amologic_assignment/pages/home.dart';
import 'package:amologic_assignment/pages/login.dart';
import 'package:amologic_assignment/pages/profile.dart';
import 'package:amologic_assignment/pages/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(
        path: SplashScreenPage.path,
        builder: (context, state) => const SplashScreenPage(),
      ),
      GoRoute(
        path: LoginPage.path,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AddPersonalDetailsPage.path,
        builder: (context, state) => const AddPersonalDetailsPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => HomePage(
          navigationShell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: HomePage.path,
                builder: (context, state) {
                  return const HomeView();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: FavouritesView.path,
                builder: (context, state) {
                  return const FavouritesView();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ChatsView.path,
                builder: (context, state) {
                  return const ChatsView();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ProfileView.path,
                builder: (context, state) {
                  return const ProfileView();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
