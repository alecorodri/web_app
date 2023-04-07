import 'package:flutter/material.dart';
import 'package:web_example/content/contact_content.dart';
import 'package:web_example/content/feature_content.dart';
import 'package:web_example/content/home_content.dart';
import 'package:web_example/content/screenshots_content.dart';
import 'package:web_example/widgets/navigation_bar_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double maxWidth = width > 1200 ? 1200 : width;

    return Scaffold(
        body: Center(
      child: Container(
          width: maxWidth,
          child: Column(
            children: [
              const NavBar(),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                children: const [
                  HomeContent(),
                  FeatureContent(),
                  ScreenshotContent(),
                  ContactContent()
                ],
              )))
            ],
          )),
    ));
  }
}
