import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatsView extends ConsumerStatefulWidget {
  const ChatsView({super.key});

  static const String path = "/chats";

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatsViewState();
}

class _ChatsViewState extends ConsumerState<ChatsView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Chats"),
    );
  }
}
