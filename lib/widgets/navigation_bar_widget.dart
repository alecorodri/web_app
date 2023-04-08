import 'package:flutter/material.dart';
import 'package:web_example/widgets/nav_bar_button.dart';
import 'package:web_example/widgets/responsive_widget.dart';

class NavBar extends ResponsiveWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopNavBar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileNavBar();
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const Icon(
              Icons.sports_martial_arts_outlined,
              size: 40,
            ),
            const Text(
              'Karate',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87),
            ),
            Expanded(child: Container()),
            NavbarButton(onTap: () {}, text: 'Home'),
            NavbarButton(onTap: () {}, text: 'Features'),
            NavbarButton(onTap: () {}, text: 'Screenshots'),
            NavbarButton(onTap: () {}, text: 'Contact'),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
