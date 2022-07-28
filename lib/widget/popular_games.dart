import 'package:flutter/material.dart';

import '../constant.dart';

class PopularGamesWidget extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String gameName;
  final String price;
  const PopularGamesWidget({
    Key? key,
    required this.imageUrl,
    required this.category,
    required this.gameName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 8, left: 16, right: 16),
          //height: MediaQuery.of(context).size.height * 0.35,
          height: MediaQuery.of(context).size.height * 0.34,
          width: 200,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 5),
          child: Text(
            category,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: colorRed, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 5),
          child: Text(
            gameName,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: Colors.white, fontSize: 22),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            price,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: Colors.white, fontSize: 22),
          ),
        ),
      ],
    );
  }
}