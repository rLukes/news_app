import 'package:flutter/material.dart';
import 'package:news_app/core/constant/palette.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.background,
        title: const Text('News', style: TextStyle(color: Palette.deepBlue, fontSize: 24, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16), 
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
             TextField(
               cursorColor: Palette.deepBlue,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Palette.lightGrey) ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Palette.deepBlue) ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
