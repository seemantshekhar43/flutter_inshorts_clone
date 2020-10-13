import 'package:flutter/material.dart';
import 'package:flutter_inshorts_clone/screens/category_screen.dart';
import 'package:flutter_inshorts_clone/widgets/news_feed.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(scrollDirection: Axis.horizontal,
      itemCount: 2,
      reverse: true,
      itemBuilder: (context, index){
        return index == 1? CategoryScreen(): NewsFeed();
      },),
    );
  }
}
