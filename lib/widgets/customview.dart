

import 'package:flutter/material.dart';
import 'package:nft_app/models/imageswipe.dart';
import 'package:nft_app/widgets/custom_images.dart';

class CustomView extends StatelessWidget {
  final swipes = ImageSwipes.generateImageSwipes();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => CustomImages(swipes[index]), 
          separatorBuilder: (_, index)=> const SizedBox(width: 20.0,), 
          itemCount: swipes.length),

    );
  }
}
