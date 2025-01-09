import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleMoldel>> getNews() async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=b713dd6d001e4162b5a69c52dada5e31&category=technology",
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleMoldel> articleList = [];

    for (var article in articles) {
      ArticleMoldel articleMoldel = ArticleMoldel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articleList.add(articleMoldel);
    }
    return articleList;
  }
  
}
