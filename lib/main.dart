import 'package:blog/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/routers/page_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inject();

  runApp(
    ProviderScope(
      child: BlogApp(),
    ),
  );
}

class BlogApp extends ConsumerStatefulWidget {
  const BlogApp({super.key});

  @override
  ConsumerState<BlogApp> createState() => _BlogAppState();
}

class _BlogAppState extends ConsumerState<BlogApp> {
  @override
  Widget build(BuildContext context) {
    final pageRouterConfig = ref.watch(pageRouterProvider);

    return MaterialApp.router(
      builder: (context, child) => child!,
      routerConfig: pageRouterConfig,
      debugShowCheckedModeBanner: false,
    );
  }
}
