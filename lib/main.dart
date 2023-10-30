import 'package:flutter/material.dart';
import 'package:red_chat/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Red Chat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          secondary: const Color(0xFFFEF9EB),
        ),
        // useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
