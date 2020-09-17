import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_inshorts_clone/models/article.dart';
import 'package:flutter_inshorts_clone/screens/web_screen.dart';
import 'package:intl/intl.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  ArticleItem({this.article});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // top:false,
      bottom: false,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(

          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
              minWidth: double.maxFinite),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 0.3),
          ),
          child: Column(
            children: [
              article.imageURL != null
                  ? Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        color: Color(0xffF0f0f0),
                        image: DecorationImage(
                          image: NetworkImage(
                            article.imageURL,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      color: Color(0xffF0f0f0),
                    ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        article.title,
                        style: TextStyle(
                          // color: AppColor.onBackground,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        article.description,
                        style: TextStyle(
                          // color: AppColor.onBackground,
                          fontSize: 15,
                          height: 1.5,
                          fontWeight: FontWeight.w300,
                        ),
                        overflow: TextOverflow.fade,
                        maxLines: 9,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Swipe left for more ${article.source} / ${DateFormat("MMMM d").format(article.publishedAt)}",
                        style: TextStyle(
                          color: Color(0xffcccccc),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebScreen(
                  url: article.sourceURL,
                  )));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Stack(
                    children: <Widget>[
                      article.imageURL != null
                          ? Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              decoration: BoxDecoration(
                                color: Color(0xffF0f0f0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    article.imageURL,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              color: Color(0xffF0f0f0),
                            ),
                      Positioned(
                        top: 0,
                        left: 0,
                        height: double.maxFinite,
                        width: double.maxFinite,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        color: Color(0xff000000).withOpacity(0.6),
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              article.content != null
                                  ? article.content
                                      .split(",")[0]
                                      .replaceAll("\n", "")
                                  : "",
                              maxLines: 1,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Tap to read more',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                              overflow: TextOverflow.fade,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
