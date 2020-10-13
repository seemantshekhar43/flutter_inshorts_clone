import 'package:flutter/cupertino.dart';
import 'package:flutter_inshorts_clone/models/article.dart';
import 'package:flutter_inshorts_clone/services/feed_repository.dart';

class Feed {
  List<Article> _list = [];
  FeedRepository feedRepository = FeedRepositoryImpl();
  List<Article> get articles => _list;
  
  Future<void> fetchArticles() async{
    List<Article> list = await feedRepository.getNewsByCategory('general');
    if(list.isNotEmpty){
      _list.clear();
      _list.addAll(list);
      print(_list.length);
      // notifyListeners();
    }
  }
  Future<void> fetchArticlesByTopic(String topic) async{
    List<Article> list = await feedRepository.getNewsByTopic(topic);
    if(list.isNotEmpty){
      _list.clear();
      _list.addAll(list);
      print(_list.length);
      // notifyListeners();
    }
  }
  
  
  // void fetchArticles(){
  //   _list = [
  //     Article(title: 'Astronomers find possible sign of life on Venus - CBS News', author: 'William Harwood',
  //     imageURL: 'https://media1.s-nbcnews.com/j/newscms/2020_38/3412099/200914-bobcat-fire-california-jm-2027_fd886a2778a9c9ce1a26496639ba0846.nbcnews-fp-1200-630.jpg',
  //     sourceURL: 'https://www.cbsnews.com/news/venus-life-possible-scientists/',
  //     publishedAt: DateTime.now(),
  //     source: 'CBS News',
  //     content: 'Telescopes in Hawaii and Chile spotted traces of phosphine, a noxious gas that on Earth is only associated with life.'),
  //
  //     Article(title: 'Astronomers find possible sign of life on Venus - CBS News', author: 'William Harwood',
  //         imageURL: 'https://cbsnews3.cbsistatic.com/hub/i/r/2020/09/14/9ab96313-4f14-4110-a1fe-3fc1b772223e/thumbnail/1200x630/f2ea2c640a3e2b728452eb21ac98bd96/venus-promo.jpg',
  //         sourceURL: 'https://www.cbsnews.com/news/venus-life-possible-scientists/',
  //         publishedAt: DateTime.now(),
  //         source: 'CBS News',
  //         content: 'Telescopes in Hawaii and Chile spotted traces of phosphine, a noxious gas that on Earth is only associated with life.'),
  //     Article(title: 'Astronomers find possible sign of life on Venus - CBS News', author: 'William Harwood',
  //         imageURL: 'https://cbsnews3.cbsistatic.com/hub/i/r/2020/09/14/9ab96313-4f14-4110-a1fe-3fc1b772223e/thumbnail/1200x630/f2ea2c640a3e2b728452eb21ac98bd96/venus-promo.jpg',
  //         sourceURL: 'https://www.cbsnews.com/news/venus-life-possible-scientists/',
  //         publishedAt: DateTime.now(),
  //         source: 'CBS News',
  //         content: 'Telescopes in Hawaii and Chile spotted traces of phosphine, a noxious gas that on Earth is only associated with life.'),
  //     Article(title: 'Astronomers find possible sign of life on Venus - CBS News', author: 'William Harwood',
  //         imageURL: 'https://cbsnews3.cbsistatic.com/hub/i/r/2020/09/14/9ab96313-4f14-4110-a1fe-3fc1b772223e/thumbnail/1200x630/f2ea2c640a3e2b728452eb21ac98bd96/venus-promo.jpg',
  //         sourceURL: 'https://www.cbsnews.com/news/venus-life-possible-scientists/',
  //         publishedAt: DateTime.now(),
  //         source: 'CBS News',
  //         content: 'Telescopes in Hawaii and Chile spotted traces of phosphine, a noxious gas that on Earth is only associated with life.'),
  //     Article(title: 'Astronomers find possible sign of life on Venus - CBS News', author: 'William Harwood',
  //         imageURL: 'https://cbsnews3.cbsistatic.com/hub/i/r/2020/09/14/9ab96313-4f14-4110-a1fe-3fc1b772223e/thumbnail/1200x630/f2ea2c640a3e2b728452eb21ac98bd96/venus-promo.jpg',
  //         sourceURL: 'https://www.cbsnews.com/news/venus-life-possible-scientists/',
  //         publishedAt: DateTime.now(),
  //         source: 'CBS News',
  //         content: 'Telescopes in Hawaii and Chile spotted traces of phosphine, a noxious gas that on Earth is only associated with life.'),
  //     Article(title: 'Astronomers find possible sign of life on Venus - CBS News', author: 'William Harwood',
  //         imageURL: 'https://cbsnews3.cbsistatic.com/hub/i/r/2020/09/14/9ab96313-4f14-4110-a1fe-3fc1b772223e/thumbnail/1200x630/f2ea2c640a3e2b728452eb21ac98bd96/venus-promo.jpg',
  //         sourceURL: 'https://www.cbsnews.com/news/venus-life-possible-scientists/',
  //         publishedAt: DateTime.now(),
  //         source: 'CBS News',
  //         content: 'Telescopes in Hawaii and Chile spotted traces of phosphine, a noxious gas that on Earth is only associated with life.'),
  //     Article(title: 'Astronomers find possible sign of life on Venus - CBS News', author: 'William Harwood',
  //         imageURL: 'https://cbsnews3.cbsistatic.com/hub/i/r/2020/09/14/9ab96313-4f14-4110-a1fe-3fc1b772223e/thumbnail/1200x630/f2ea2c640a3e2b728452eb21ac98bd96/venus-promo.jpg',
  //         sourceURL: 'https://www.cbsnews.com/news/venus-life-possible-scientists/',
  //         publishedAt: DateTime.now(),
  //         source: 'CBS News',
  //         content: 'Telescopes in Hawaii and Chile spotted traces of phosphine, a noxious gas that on Earth is only associated with life.'),
  //
  //   ];
  // }
}