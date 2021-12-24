
import 'package:flutter/material.dart';
import 'package:nft_app/models/arts.dart';
import 'package:nft_app/models/imageswipe.dart';
import 'package:nft_app/models/profile.dart';


class CustomImages extends StatelessWidget {

  CustomImages(this.swipes);

  final ImageSwipes swipes;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(swipes.imgUrl!,)
        )
      )
   //   child: Image.asset(swipes.imgUrl!, fit: BoxFit.cover,),
    );
  }
}
