import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/constants/colors.dart';
import 'package:nft_app/models/profile.dart';

class PersonInfo extends StatelessWidget {
  final Profile profile;

  PersonInfo(
    this.profile,
  );

  Text _buildText(String text) {
    return Text(
      text,
      style: GoogleFonts.pacifico(
        textStyle: TextStyle(
            color: appColor.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 18.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: appColor.white,
            radius: 50.0,
            backgroundImage: AssetImage(profile.imgurl!),
          ),
          _buildText(
            profile.name!,
          ),
          Text(
            profile.twitter!,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: appColor.accentColor,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            profile.desc!,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: appColor.primaryColor,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
