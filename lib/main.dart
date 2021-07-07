import 'package:flutter/material.dart';
import 'package:look_book/Theme/theme_text.dart';
import 'package:look_book/screens/profile_screen/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: ThemeText.getTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
