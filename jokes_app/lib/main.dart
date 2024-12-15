import 'package:flutter/material.dart';
import 'package:jokes_app/screens/categorized_jokes.dart';
import 'package:jokes_app/screens/random_joke.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokes App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/random': (context) => RandomJokeScreen(),
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
