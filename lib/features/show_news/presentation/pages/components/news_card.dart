import 'package:flutter/material.dart';
import 'package:news_app/core/constant/palette.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width - (2 * 16),
      child: Stack(
        children: [
          Container(
            height: 260,
            color: Palette.lightGrey,
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            child: Container(
              height: 80,
              // width: MediaQuery.of(context).size.width - (2*32),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,2),
                    blurRadius: 4
                  )
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
