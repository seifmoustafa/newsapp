import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_views.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: RichText(
            text: const TextSpan(
                text: 'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Cloud',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      )),
                ]),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListViews(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
            ],
          ),
        )
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //   child: Column(children: [
        //     CategoriesListViews(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     NewsListViews(),
        //   ]),
        // ),
        );
  }
}
