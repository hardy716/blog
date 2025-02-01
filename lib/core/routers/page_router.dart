import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'page_router.g.dart';

@riverpod
GoRouter pageRouter(Ref ref) {
  final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'navigator-key');

  final pageRouter = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',
    routes: [],
  );

  ref.onDispose(pageRouter.dispose);

  return pageRouter;
}
