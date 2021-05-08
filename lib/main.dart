import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/profile_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.orange,
        fontFamily: "Vollkorn",
      ),
      home: ProfilePage(),
    );
  }
}
