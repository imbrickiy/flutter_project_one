import 'package:flutter/material.dart';
import 'package:flutter_project_one/player_screen_demo.dart';

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
      home: PlayerScreenDemo(),
    );
  }
}
