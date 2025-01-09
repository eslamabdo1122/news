import 'package:flutter/material.dart';

import '../widget/category_card.dart';
import '../widget/category_post.dart';
import '../widget/listview_cardtop.dart';
import '../widget/listview_posts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 219, 220),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                " App",
                style: TextStyle(
                  fontSize: 30,
                  color: const Color.fromARGB(255, 245, 187, 13),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SliverToBoxAdapter(
                  child: ListCardTop(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 12,
                  ),
                ),
                ListviewPosts(),
              ],
            )

            // Column(
            //   children: [
            //     SizedBox(height: 20,),
            //     ListCardTop(),
            //     SizedBox(height: 12,),
            //     Expanded(child:
            //   ListviewPosts()  )
            //   ],
            // ),
            ));
  }
}
