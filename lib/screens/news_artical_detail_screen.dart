import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mvvmAPp/viewmodel/news_article_view_model.dart';
import 'package:mvvmAPp/widgets/circular_image.dart';

class NewsArticalDetailScreen extends StatelessWidget {
  final NewsArticleViewModel article;

  const NewsArticalDetailScreen({this.article});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Author',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    this.article.author ?? 'Undefrined',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Divider(
                    color: Color(0xffff8a30),
                    height: 80,
                    thickness: 20,
                  ),
                  Text(
                    'Headline',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Text(
                this.article.title,
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, wordSpacing: 3),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                this.article.publishAt,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Container(
                height: 200,
                child: CircularImage(
                  imageUrl: this.article.imageUrl,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                this.article.description,
                style: TextStyle(fontSize: 15, wordSpacing: 3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
