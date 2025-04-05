import 'package:dio/dio.dart';

import '../models/news_model.dart';

class NewsService {

  final dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {

    final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=d9ada304fd5b4ae5b67e432789a3b3f9&category=$category');

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData["articles"];

    List<ArticleModel> articleList= [];

    for (var index in articles ) {

      ArticleModel articleModel = ArticleModel.fromJson(index);

      articleList.add(articleModel);

    }
    return articleList;
  }

}