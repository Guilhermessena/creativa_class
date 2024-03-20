import 'package:creativa_class/pages/home_page.dart';
import 'package:creativa_class/pages/materia_page.dart';
import 'package:creativa_class/pages/quiz_page.dart';
import 'package:creativa_class/pages/videos_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Creativa Class",
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xfff4382f)),
      routes: {
        "/": (context) => const HomePage(),
        "/materiaPage": (context) => const MateriaPage(),
        "/videosPage": (context) => const VideosPage(),
        "/quizPage": (context) => const QuizPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
