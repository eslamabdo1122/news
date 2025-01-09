import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.articleMoldel});
  final ArticleMoldel articleMoldel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleMoldel.image ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4VZ4vMeOwSRr0CesfbC75uWswrX6C1F6_w&s',
              width: double.infinity,
              height: 220,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            articleMoldel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            articleMoldel.subTitle??" ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
