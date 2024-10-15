import 'package:flutter/material.dart';
import 'package:report_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'report app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 144, 204, 243)),
        useMaterial3: true,
      ),
      routes: {
         '/login': (context) => const LoginScreen(),
        '/home': (context) => const Homescreen(),
      },
      home: const LoginScreen(),
    );
  }
}