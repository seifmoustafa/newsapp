import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/categories_list_views.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView(
      {super.key, required this.category, required this.categoryModel});
  final String category;
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          categoryModel.categoryName,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CategoriesListViews(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
