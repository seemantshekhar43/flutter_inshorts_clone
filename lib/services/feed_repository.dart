import 'dart:convert';

import 'package:flutter_inshorts_clone/global.dart';
import 'package:flutter_inshorts_clone/models/article.dart';
import 'package:http/http.dart' as http;
abstract class FeedRepository {

  Future<List<Article>> getNewsByTopic(String topic);

  Future<List<Article>> getNewsByCategory(String category);
}

class FeedRepositoryImpl implements FeedRepository{
  @override
  Future<List<Article>> getNewsByCategory(String category) async{
    List<Article> list = [];
    final String url = Global.baseURL + 'top-headlines?country=in&category=$category';
    try{
      final response = await http.get(url, headers: {"X-Api-Key": Global.apiKey});
      if(response.statusCode ==  200){
        final responseBody = jsonDecode(response.body);
        print(responseBody);
        final List data = responseBody['articles'].toList();
        data.forEach((article) {
          final Article a = Article(
            title: article['title'] ?? '',
            description: article['description'] ?? '',
            content: article['content'] ?? '',
            author: article['author'] ?? '',
            publishedAt:DateTime.parse(article['publishedAt']),
            imageURL: article['urlToImage'] ?? ' ',
            sourceURL: article['url'] ?? 'https://www.google.com',
              source: article['source'] != null
                  ? article['source']['name']
                  : null,
          );
          list.add(a);
        });

      }
    }catch(error){
      print(error);
    }

    return list;
  }

  @override
  Future<List<Article>> getNewsByTopic(String topic) async{
    final String url = Global.baseURL +"everything?q=$topic";
    List<Article> list = [];

    try{
      final response = await http.get(url, headers: {"X-Api-Key": Global.apiKey});
      if(response.statusCode ==  200){
        final responseBody = jsonDecode(response.body);
        print(responseBody);
        final List data = responseBody['articles'].toList();
        data.forEach((article) {
          final Article a = Article(
            title: article['title'] ?? '',
            description: article['description'] ?? '',
            content: article['content'] ?? '',
            author: article['author'] ?? '',
            publishedAt:DateTime.parse(article['publishedAt']),
            imageURL: article['urlToImage'] ?? ' ',
            sourceURL: article['url'] ?? 'https://www.google.com',
            source: article['source'] != null
                ? article['source']['name']
                : null,
          );
          list.add(a);
        });

      }
    }catch(error){
      print(error);
    }

    return list;
  }

}