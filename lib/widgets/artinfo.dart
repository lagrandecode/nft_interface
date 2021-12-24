import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/models/arts.dart';
import 'package:nft_app/models/imageswipe.dart';
import 'package:nft_app/models/profile.dart';
import 'package:nft_app/widgets/custom_images.dart';

class ArtsInfo extends StatelessWidget {
  final Arts arts;
  ArtsInfo(this.arts,);

  final Profile profile = Profile.generateProfile();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            arts.name!,
            style: GoogleFonts.pacifico(
              textStyle: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 100.0,
                decoration: const BoxDecoration(),
                child: Row(
                  children: <Widget>[
                    _buildStory(
                        profile.imgurl!, 0, "Creators", profile.twitter!),
                  ],
                ),
              ),
              Container(
                height: 100.0,
                decoration: const BoxDecoration(),
                child: Row(
                  children: <Widget>[
                    _buildStory("assets/images/eth.png", 0, "Currency",
                        "ETH ${profile.price}"),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            profile.desc!,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }

  //method used in the app on this widget is applied here

  _buildStory(String imgUrl, double padding, String text, String title) => Row(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(padding),
              height: 50.0,
              width: 50.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey.withOpacity(0.3),
                backgroundImage: AssetImage(imgUrl),
              )),
          const SizedBox(
            width: 10.0,
          ),
          Container(
            padding: EdgeInsets.only(top: 15.0),
            child: Column(
              children: <Widget>[
                Text(
                  text,
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
