import 'package:amologic_assignment/pages/login.dart';
import 'package:amologic_assignment/pages/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: "/login",
    routes: [
      GoRoute(
        path: SplashScreenPage.path,
        builder: (context, state) => const SplashScreenPage(),
      ),
      GoRoute(
        path: LoginPage.path,
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );
}
