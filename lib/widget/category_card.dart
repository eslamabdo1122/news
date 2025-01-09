import 'package:flutter/material.dart';
import 'package:news/models/topcard.dart';

class CardTop extends StatelessWidget {
  const CardTop({super.key, required this.catrdtop});
  final cardtop catrdtop;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 230,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(catrdtop.image),
          ),
        ),
        child: Center(
          child: Text(
            catrdtop.imageNAme,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
