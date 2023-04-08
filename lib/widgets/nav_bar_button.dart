import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/color_provider.dart';

class NavbarButton extends ConsumerWidget {
  final VoidCallback onTap;
  final String text;

  const NavbarButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(textColor);
    return MouseRegion(
      onEnter: (value) {
        //ref.read(textColor.notifier).state = Colors.blue;
        ref.read(textColor.notifier).update((state) => Colors.blue);
      },
      onExit: (value) {
        //ref.read(textColor.notifier).state = Colors.black;
        ref.read(textColor.notifier).update((state) => Colors.black);
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w600, color: color),
            ),
          ),
        ),
      ),
    );
  }
}
