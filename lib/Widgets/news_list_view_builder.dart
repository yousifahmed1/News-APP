import 'package:advanced_news_app/Widgets/news_list_view.dart';
import 'package:flutter/material.dart';

import '../Services/get_news.dart';
import '../models/news_model.dart';

class NewsListviewBuilder extends StatefulWidget {
  const NewsListviewBuilder({
    super.key, required this.categoryToView,
  });
  final String categoryToView;

  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getNews(category: widget.categoryToView);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const Text('oops  was an error, try later');
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
