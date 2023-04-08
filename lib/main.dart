import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_example/providers/theme_provider.dart';
import 'package:web_example/routers/routers.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routers = ref.watch(routersProvider);
    final isDarkMode = ref.watch(isDarkModeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: 'Web App',
      theme: !isDarkMode ? ThemeData.light() : ThemeData.dark(),
      routerConfig: routers,
    );
  }
}
