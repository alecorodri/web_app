import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/my_web_page.dart';

final routersProvider = Provider.autoDispose<GoRouter>((ref) {
  return GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const MyHomePage()),
  ]);
});
