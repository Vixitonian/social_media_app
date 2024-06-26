import 'package:flutter/material.dart';
import 'package:social_media_app/screens/show_users_screen.dart';
import 'package:social_media_app/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ShowUsersScreen());
  }
}
