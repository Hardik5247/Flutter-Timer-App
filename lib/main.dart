import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:flutter_app/resources/activity_adapter.dart';
import 'package:flutter_app/resources/projects_adapter.dart';
import 'package:flutter_app/ui/home.dart';

void main() {
  Hive.registerAdapter(ProjectsAdapter());
  Hive.registerAdapter(ActivityAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}
