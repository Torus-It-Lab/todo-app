import 'package:flutter/material.dart';
import 'package:todo/src/pages/tags.dart';
import 'package:todo/src/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      theme: todoTheme,
      initialRoute: '/',
      routes: {        
        '/' : (BuildContext context) => TagsScreen(),        
      },

    );
  }
}
