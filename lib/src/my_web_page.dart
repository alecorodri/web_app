import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          child: Column(
        children: [
          //NavigatorBar,
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
            children: const [
              //Home,
              //Features,
              //ScreenShots,
              //Contact
            ],
          )))
        ],
      )),
    ));
  }
}
