

import 'package:flutter/material.dart';
import 'package:nft_app/constants/colors.dart';
import 'package:nft_app/models/arts.dart';
import 'package:nft_app/models/imageswipe.dart';
import 'package:nft_app/screens/text.dart';
import 'package:nft_app/widgets/artinfo.dart';
import 'package:nft_app/widgets/customview.dart';
import 'package:nft_app/widgets/detailbanner.dart';

class DetailPage extends StatelessWidget {
  final Arts arts;

  DetailPage(
    this.arts,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (_, bool isInnerScrollView) => <Widget>[
              SliverAppBar(
                elevation: 0,
                expandedHeight: 350,
                backgroundColor: appColor.accentColor,
                leading: _buildIconBar(_, Icons.arrow_back,back: true),
                actions: [InkWell(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TextMe(),),),
                    child: _buildIconBar(_, Icons.shopping_cart_outlined,))],
                flexibleSpace: FlexibleSpaceBar(
                  background: DetailBanner(arts),
                ),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: ArtsInfo(arts,),
              )
            ],
            body: Container(
              padding: EdgeInsets.all(10.0),
              child: CustomView(),
            ),
          ),
        ));
  }

  IconButton _buildIconBar(_, IconData icon, {bool back = false}) => IconButton(
        splashRadius: 25.0,
        onPressed: back ? () => Navigator.of(_).pop(): null,
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20.0,
        ),
      );
}
