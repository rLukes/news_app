import 'package:flutter/material.dart';
import 'package:news_app/core/constant/palette.dart';
import 'package:news_app/features/show_news/presentation/pages/news_view_page.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const NewsViewPage();
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 300,
        width: MediaQuery.of(context).size.width - (2 * 16),
        child: Stack(
          children: [
            Container(
                height: 260,
                color: Palette.lightGrey,
                child: Image.network(
                  "https://cdn.vox-cdn.com/thumbor/Pz0vdQ0aL4DlJcarWhwZLk2RmBw=/0x0:1323x638/1200x800/filters:focal(539x248:749x458)/cdn.vox-cdn.com/uploads/chorus_image/image/69851120/Screenshot_2021_09_10_7.38.39_AM.0.png",
                  fit: BoxFit.cover,
                )),
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
                          offset: Offset(0, 2),
                          blurRadius: 4,
                          color: Colors.black12)
                    ]),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                      child: Text(
                    'Some tittle',
                    maxLines: 2,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Palette.deepBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
