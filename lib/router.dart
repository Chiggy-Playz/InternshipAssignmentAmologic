import 'package:amologic_assignment/pages/add_personal_details.dart';
import 'package:amologic_assignment/pages/login.dart';
import 'package:amologic_assignment/pages/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: "/add_personal_details",
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
      
    ],
  );
}
