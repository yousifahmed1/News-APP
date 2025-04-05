import 'package:advanced_news_app/Widgets/NewsCard.dart';
import 'package:flutter/material.dart';

import '../models/news_model.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) => NewsCard(article: articles[index]
        )
      ,
    );
  }
}
