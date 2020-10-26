import 'package:clone_netflix/ui/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CloneNetflix());
}

class CloneNetflix extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone Netflix',
      home: WelcomePage(),
    );
  }
}

