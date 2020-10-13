import 'package:flutter/material.dart';
import 'package:flutter_inshorts_clone/models/feed.dart';
import 'package:flutter_inshorts_clone/widgets/article_item.dart';
import 'package:swipedetector/swipedetector.dart';

import 'loading_screen.dart';

class SelectedNewsFeed extends StatefulWidget {
  final category;

  SelectedNewsFeed({this.category});

  @override
  _SelectedNewsFeedState createState() => _SelectedNewsFeedState();
}

class _SelectedNewsFeedState extends State<SelectedNewsFeed> {
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
    await articlesList.fetchArticlesByTopic(widget.category);

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  SwipeDetector(
        onSwipeRight: (){
          Navigator.of(context).pop();
        },
        child: (_isLoading)? LoadingScreen():PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: articlesList.articles.length,
            itemBuilder: (context, index){
              return  ArticleItem(article: articlesList.articles[index],);
            }
        ),
      )
    );
  }
}
