import 'package:flutter/material.dart';
import '../models/joke_model.dart';

class JokeDetailCard extends StatelessWidget {
  final Joke joke;

  JokeDetailCard({required this.joke});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(joke.setup),
        subtitle: Text(joke.punchline),
      ),
    );
  }
}
