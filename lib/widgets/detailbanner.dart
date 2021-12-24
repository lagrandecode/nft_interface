import 'package:flutter/material.dart';
import 'package:nft_app/models/arts.dart';

class DetailBanner extends StatelessWidget {
  final Arts art;

  DetailBanner(this.art);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          height: 400,
          width: double.maxFinite,
          child: Hero(
            tag: art.imgUrl!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                art.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 30.0,
          bottom: 30.0,
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.redAccent,
              size: 25.0,
            ),
          ),
        ),
      ],
    );
  }
}
