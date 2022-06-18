import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Welcome to Flutter',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
              fontFamily: "RobotoMono",
              color: Color.fromARGB(255, 67, 5, 255),
              fontStyle: FontStyle.normal,
              fontSize: 25,
            ),
          ),
        ),
        body: Center(
          child: Text(
            wordPair.asPascalCase,
            style: TextStyle(
              fontSize: 30,
              decoration: TextDecoration.underline,
              color: Colors.indigo,
              decorationThickness: 2.8,
            ),
          ),
        ),
      ),
    );
  }
}
