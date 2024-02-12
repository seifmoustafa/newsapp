import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:news_app/models/articale_model.dart';

class NewsListViews extends StatelessWidget {
  final List<ArticaleModel> articles;
  NewsListViews({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22.0),
            child: NewsTile(
              articale: articles[index],
            ),
          );
        },
      ),
    );
  }
}
