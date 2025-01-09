import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';

import 'category_post.dart';

class ListviewPosts extends StatefulWidget {
  const ListviewPosts({super.key});

  @override
  State<ListviewPosts> createState() => _ListviewPostsState();
}

class _ListviewPostsState extends State<ListviewPosts> {
  List<ArticleMoldel> articles = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewsService(dio: Dio()).getNews();
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ?  SliverFillRemaining(
          // hasScrollBody: false,
            child: Center(
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircularProgressIndicator(
                  // value: 2,
                  strokeWidth: 10, // عرض خط المؤشر
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // لون المؤشر
                    backgroundColor: Colors.grey[300], // لون الخلفية
                  
                ),
              ),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return Post(
                  articleMoldel: articles[index],
                );
              },
            ),
          );
    //
    // ListView.builder(
    //   itemCount: 20,
    //   itemBuilder: (context, index) {
    //   return Post();
    // });
  }
}
