import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/constants/colors.dart';
import 'package:nft_app/models/profile.dart';
import 'package:nft_app/widgets/custom_creations.dart';
import 'package:nft_app/widgets/personinfo.dart';
import 'package:nft_app/widgets/tab_sliver_delegate.dart';

class HomePageProfile extends StatelessWidget {
  final profile = Profile.generateProfile();
  final List<String> tabs = ["Creations", "Collections"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _builAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (_, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: PersonInfo(profile),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    tabs: tabs
                        .map((e) => Tab(
                              child: Text(
                                e,
                                style: GoogleFonts.pacifico(
                                  textStyle: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: appColor.primaryColor,
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              Creations(list: profile.creation!, storekey: "creations"),
              Creations(list: profile.collections!, storekey: "Collections"),
            ],
          ),
        ),
      ),
    );
  }
// here are the methods used in screen

  AppBar _builAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(Icons.menu),
      actions: [
        _buildIcon(
          Icons.shopping_cart_outlined,
        )
      ],
    );
  }

  IconButton _buildIcon(IconData icon) {
    return IconButton(
        onPressed: () {},
        splashRadius: 25.0,
        icon: Icon(
          icon,
          size: 25.0,
          color: Colors.black,
        ));
  }
}
