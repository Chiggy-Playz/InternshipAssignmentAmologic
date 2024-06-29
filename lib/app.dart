import 'package:amologic_assignment/router.dart';
import 'package:amologic_assignment/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HealthyPetApp extends ConsumerWidget {
  const HealthyPetApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      title: 'HealthyPet',
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
