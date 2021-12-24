import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/constants/colors.dart';

class TabSliverDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final bool space;

  TabSliverDelegate(this.tabBar, {this.space = false});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(5.0),
        shadowColor: appColor.accentColor,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
            border: Border(
              bottom: BorderSide(color: Colors.transparent),
            ),
          ),
          padding: EdgeInsets.only(
            left: 15.0,
            right: space? 120: 15,
          ),
          child: tabBar,
        ),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
