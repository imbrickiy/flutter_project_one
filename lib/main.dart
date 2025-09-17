import 'package:flutter/material.dart';
import 'package:flutter_project_one/carausel_card_demo.dart';
import 'package:flutter_project_one/discord_login_demo.dart';
import 'package:flutter_project_one/player_screen_demo.dart';
import 'package:flutter_project_one/screens/home_screen.dart';
import 'package:flutter_project_one/screens/login_screen.dart';
import 'package:flutter_project_one/screens/welcome_screen.dart';
import 'package:flutter_project_one/stacked_card.dart';
import 'package:flutter_project_one/tab_bar_demo.dart';

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
      home: HomeScreen(),
    );
  }
}
