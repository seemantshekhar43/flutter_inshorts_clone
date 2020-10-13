import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String icon;
  final String title;
  final Function onTap;

  const SuggestionCard({Key key, this.icon, this.title, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
       // FeedController.addCurrentPage(1);
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        height: size.height * 0.2,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).accentColor,
          ),

          // color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/icons/$icon.png",
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  title,
                  style:  TextStyle(
                  // color: AppColor.onBackground,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}