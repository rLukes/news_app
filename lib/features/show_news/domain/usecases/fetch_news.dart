import 'package:dartz/dartz.dart';
import 'package:news_app/core/failures_successes/failures.dart';
import 'package:news_app/features/show_news/domain/entities/news_info.dart';
import 'package:news_app/features/show_news/domain/repositories/fetch_repo_contract.dart';

import '../../../../core/services_locator.dart';

class FetchNewsUsecases {
  final FetchRepo fetchRepo = sl<FetchRepo>();

    Future<Either<Failure, List<NewsInfo>>> fetchNews(String? srchTxt) {
    return fetchRepo.fetchNews(srchTxt);
  }
}
