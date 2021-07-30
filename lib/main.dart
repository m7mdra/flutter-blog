import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _routes = <String, WidgetBuilder>{HomePage.route: (_) => HomePage()};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: _routes,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
