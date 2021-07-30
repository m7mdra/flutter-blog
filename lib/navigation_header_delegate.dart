import 'package:flutter/material.dart';

import 'navigation_tabs.dart';

class NavigationHeaderDelegate extends SliverPersistentHeaderDelegate{
  final TabController tabController;

  NavigationHeaderDelegate(this.tabController);
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

   return Container(
     padding: const EdgeInsets.only(
         top: 24, right: 24, left: 24, bottom: 8),
     decoration: BoxDecoration(boxShadow: [
       BoxShadow(offset: Offset(0, 1), color: Colors.black12),
     ], color: Colors.white),
     child: Row(
       children: [NavigationTabs(tabController: tabController)],
     ),
   );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 70;

  @override
  // TODO: implement minExtent
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
return true;
  }

}