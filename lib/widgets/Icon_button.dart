import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/theme_provider.dart';

class IconButtonTheme extends ConsumerWidget {
  const IconButtonTheme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    return IconButton(
        icon: isDarkMode
            ? const Icon(Icons.dark_mode_outlined)
            : const Icon(Icons.light_mode),
        onPressed: () {
          ref.read(isDarkModeProvider.notifier).update((state) => !state);
        });
  }
}
