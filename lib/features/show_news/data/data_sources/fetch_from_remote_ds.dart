import 'package:news_app/core/failures_successes/exceptions.dart';
import 'package:news_app/core/services/api_service.dart';
import 'package:news_app/features/show_news/data/models/news_info_model.dart';

abstract class FetchFromRemoteDS {
  Future<List<NewsInfoModel>> fetchNews(String? searchTxt);
}

class FetchFromRemoteDSImpl extends FetchFromRemoteDS {
  final ApiService apiService;

  FetchFromRemoteDSImpl({required this.apiService});

  @override
  Future<List<NewsInfoModel>> fetchNews(String? searchTxt) async {
    try {
      Map<String, dynamic> data = await apiService.getData();

      List list = data['articles'];
      List<Map<String, dynamic>> mapList = [];
      for (int i = 0; i < list.length; i++) {
        Map<String, dynamic> m = list[i] as Map<String, dynamic>;
        mapList.add(m);
      }
      List<NewsInfoModel> nList = [];
      for (int i = 0; i < mapList.length; i++) {
        NewsInfoModel newsInfoModel = NewsInfoModel.fromMap(mapList[i]);
        nList.add(newsInfoModel);
      }
      return nList;
    } catch (e) {
      throw const FetchException(message: "Failed to get data");
    }
  }
}
