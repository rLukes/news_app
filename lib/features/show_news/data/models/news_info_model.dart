import 'package:news_app/features/show_news/domain/entities/news_info.dart';

class NewsInfoModel extends NewsInfo {
  NewsInfoModel(
      {String? title,
      String? author,
      String? imageUrl,
      String? content,
      String? dateTime})
      : super(
          title: title,
          autor: author,
          imageUrl: imageUrl,
          content: content,
          dateTime: _getDateTimeinDateTime(dateTime),
        );

  static DateTime _getDateTimeinDateTime(String? dateTime) {
    if (dateTime == null) {
      return DateTime.now();
    } else {
      final DateTime? dataTimeInDateTimeFormat = DateTime.tryParse(dateTime!);
      if (dataTimeInDateTimeFormat == null) {
        return DateTime.now();
      }
      return dataTimeInDateTimeFormat;
    }
  }

  factory NewsInfoModel.fromMap(Map<String, dynamic> map){
    return NewsInfoModel(
      title: map['title'],
      author: map['author'],
      imageUrl: map['urlToImage'],
      content: map['content'],
      dateTime: map['publishedAp']
    );
  }
}
