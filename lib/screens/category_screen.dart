import 'package:flutter/material.dart';
import 'package:flutter_inshorts_clone/screens/selected_news_feed.dart';
import 'package:flutter_inshorts_clone/widgets/suggestion_card.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var bloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Suggested topics'.toUpperCase(),
                    style: TextStyle(
                      // color: AppColor.onBackground,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 36,
                    height: 2.5,
                    color: Color(0xff8192A3),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: (1 / 1.4),
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: <Widget>[
                  SuggestionCard(
                    title:
                       'coronavirus',
                    icon: "coronavirus",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'coronavirus',)));
                    }
                  ),
                  SuggestionCard(
                      title:
                      'india',
                      icon: "india",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'india',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'business',
                      icon: "business",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'business',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'politics',
                      icon: "politics",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'politics',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'sports',
                      icon: "sports",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'sports',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'technology',
                      icon: "technology",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'technology',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'entertainment',
                      icon: "entertainment",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'entertainment',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'startups',
                      icon: "startups",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'startups',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'education',
                      icon: "education",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'education',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'automobile',
                      icon: "automobile",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'automobiles',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'science',
                      icon: "science",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'science',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'travel',
                      icon: "travel",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'travel',)));
                      }
                  ),
                  SuggestionCard(
                      title:
                      'fashion',
                      icon: "fashion",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedNewsFeed(category: 'fashion',)));
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
