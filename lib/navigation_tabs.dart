import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationTabs extends StatelessWidget {
  const NavigationTabs({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TabBar(
        tabs: [
          Tab(
            text: 'Blog',
          ),
          Tab(
            text: 'Projects',
          ),
          Tab(
            text: 'About',
          ),
          Tab(
            text: 'Contact',
          ),
        ],
        controller: _tabController,
        labelColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.black,
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 1.0, color: Colors.black)),
        labelStyle: GoogleFonts.lato(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
        indicatorPadding: EdgeInsets.all(-8),
        labelPadding: EdgeInsets.zero,
        unselectedLabelStyle:
        GoogleFonts.lato(fontSize: 14, color: Colors.grey.withAlpha(50)),
      ),
    );
  }
}
