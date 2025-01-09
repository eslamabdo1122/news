import 'package:flutter/widgets.dart';

import '../models/topcard.dart';
import 'category_card.dart';

class ListCardTop extends StatelessWidget {
  const ListCardTop({super.key});
  final List<cardtop> cardstop = const [
    cardtop(image: "assets/images/business.avif", imageNAme: "Business"),
    cardtop(image: "assets/images/entertaiment.avif", imageNAme: "Entertaiment"),
    cardtop(image: "assets/images/general.avif", imageNAme: "General"),
    cardtop(image: "assets/images/health.avif", imageNAme: "Health"),
    cardtop(image: "assets/images/science.avif", imageNAme: "Science"),
    cardtop(image: "assets/images/sports.avif", imageNAme: "Sports"),
    cardtop(image: "assets/images/technology.jpeg", imageNAme: "Technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cardstop.length,
          itemBuilder: (context, index) {
            return CardTop(
              catrdtop: cardstop[index],
            );
          }),
    );
  }
}
