import 'package:flutter/material.dart';
import 'package:jokes_app/screens/categorized_jokes.dart';
import 'package:jokes_app/screens/random_joke.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokes App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/random': (context) => const RandomJokeScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/jokes') {
          final args = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) => JokesByTypeScreen(type: args),
          );
        }
        return null;
      },
    );
  }
}
