import 'package:flutter/material.dart';
import 'package:google_translator/google_translator.dart';
import 'package:begginer_tutorial_app/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String apiKey = "AIzaSyBszAiH4Z3TKMc0xlnOlW78zd6n0z9g4CA";

  @override
  Widget build(BuildContext context) {
    return GoogleTranslatorInit(apiKey,
        builder: () => (MaterialApp(
      title: 'Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Tutorial Home Page'),
    )),
        translateFrom: Locale("ja"),
        translateTo: Locale("en"));
  }
}
