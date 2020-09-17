import 'package:flutter/material.dart';
import 'package:flutter_inshorts_clone/widgets/news_feed.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsFeed(),
      backgroundColor: Colors.transparent,
    );
  }
}
