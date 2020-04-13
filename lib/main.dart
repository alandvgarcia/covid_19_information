import 'package:covid19_information_app/screens/main_tab_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          accentColor: Colors.blueAccent,
          scaffoldBackgroundColor: Color(0xFFE7EEFC)),
      home: MainTabScreen(),
    );
  }
}
