import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_page.dart';
import 'package:portfolio/screens/projects_page.dart';
import 'package:portfolio/screens/blogs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) => const HomePage(),
        'projects_page': (context) => const ProjectsPage(),
        'blogs_page': (context)=> const BlogsPage(),
      },
      home: const HomePage(),
    );
  }
}