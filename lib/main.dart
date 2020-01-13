import 'package:flutter/material.dart';
import 'package:todo/src/pages/tags.dart';
import 'package:todo/src/theme.dart';

import 'src/pages/task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      theme: todoTheme,
      initialRoute: '/task',
      routes: {        
        '/' : (BuildContext context) => TagsScreen(),        
        '/task' : (BuildContext context) => TaskScreen(),
      },

    );
  }
}
