import 'package:flutter/material.dart';
import 'package:news_app/core/constant/palette.dart';
import 'package:news_app/features/show_news/presentation/pages/components/news_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.background,
        title: const Text(
          'News',
          style: TextStyle(
              color: Palette.deepBlue,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            TextField(
              cursorColor: Palette.deepBlue,
              decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Palette.lightGrey)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Palette.deepBlue)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Topp News',
              style: TextStyle(
                  color: Palette.deepBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 16,
            ),
            NewsCard()
          ],
        ),
      ),
    );
  }
}
