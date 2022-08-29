import 'package:flutter/material.dart';
import 'package:news_app/core/constant/palette.dart';
import 'package:news_app/features/show_news/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          secondary: Palette.deepBlue
        ),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
