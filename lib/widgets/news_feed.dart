import 'package:flutter/material.dart';
import 'package:flutter_inshorts_clone/models/feed.dart';
import 'package:flutter_inshorts_clone/screens/loading_screen.dart';

import 'article_item.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();

}

class _NewsFeedState extends State<NewsFeed> {

  Feed articlesList = Feed();
  bool _isLoading = false;
  @override
  void initState() {
     fetchArticles();
    super.initState();
  }

  fetchArticles()async{
    setState(() {
      _isLoading = true;
    });
    await articlesList.fetchArticles();

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  (_isLoading)? LoadingScreen():PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: articlesList.articles.length,
          itemBuilder: (context, index){
          return  ArticleItem(article: articlesList.articles[index],);
          }
      ),
    );
  }
}
