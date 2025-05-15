import 'package:flutter/material.dart';
import 'package:flutter_project_one/bottom_app_bar.dart';
import 'package:flutter_project_one/floating_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        // useMaterial3: true,
      ),
      home: BottomAppBarDemo(),
    );
  }
}
