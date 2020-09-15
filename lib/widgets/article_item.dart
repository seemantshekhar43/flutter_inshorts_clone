import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_inshorts_clone/models/article.dart';
import 'package:intl/intl.dart';

class ArticleItem extends StatelessWidget {

  final Article article;


  ArticleItem({this.article});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top:true,
      bottom: false,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(

          constraints: BoxConstraints(
            minHeight:MediaQuery.of(context).size.height,
            minWidth: double.maxFinite
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 0.3),
          ),
          child: Column(
            children: [
              article.imageURL != null
                  ? Container(
                height: MediaQuery.of(context).size.height *0.4,
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
                height: MediaQuery.of(context).size.height *0.4,
                color: Color(0xffF0f0f0),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Expanded(
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
                        article.content,
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
                      // Text(
                      //   "${AppLocalizations.of(context).translate("swipe_message")} ${article.source} / ${DateFormat("MMMM d").format(
                      //     DateTime(article.publishedAt),
                      //   )}",
                        style: TextStyle(
                          color: Color(0xffcccccc),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      )
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
