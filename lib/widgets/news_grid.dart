import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvmAPp/screens/news_artical_detail_screen.dart';
import 'package:mvvmAPp/viewmodel/news_article_view_model.dart';

import 'circular_image.dart';

class NewsGrid extends StatelessWidget {
  final List<NewsArticleViewModel> articles;
  NewsGrid({this.articles});

  void _showNewsArticalDetail(context, article) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return NewsArticalDetailScreen(
        article: article,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (_, index) {
        var article = articles[index];
        return GestureDetector(
          onTap: () {
            _showNewsArticalDetail(context, article);
          },
          child: GridTile(
            child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: CircularImage(
                  imageUrl: article.imageUrl,
                )),
            footer: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                article.title,
                style: TextStyle(fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
          ),
        );
      },
      itemCount: this.articles.length,
    );
  }
}
