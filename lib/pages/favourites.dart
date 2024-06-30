import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouritesView extends ConsumerStatefulWidget {
  const FavouritesView({super.key});

  static const String path = "/favourites";

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavouritesViewState();
}

class _FavouritesViewState extends ConsumerState<FavouritesView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Favourites"),
    );
  }
}
