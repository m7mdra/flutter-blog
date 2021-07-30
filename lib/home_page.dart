import 'package:flutter/material.dart';

import 'logo_name_widget.dart';
import 'navigation_tabs.dart';

class HomePage extends StatefulWidget {
  static var route = "home";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  int _activePage = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _pageController = PageController(keepPage: true);
    _tabController.addListener(_tabChangeListener);
  }

  void _tabChangeListener() {
    setState(() {
      _activePage = _tabController.index;
      _pageController.jumpToPage(_activePage);
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(_tabChangeListener);
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 24, right: 24, left: 24, bottom: 8),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(offset: Offset(0, 1), color: Colors.black12)
            ], color: Colors.white),
            child: Row(
              children: [
                LogoNameWidget(),
                Spacer(),
                NavigationTabs(tabController: _tabController)
              ],
            ),
          ),
          Flexible(
            child: PageView(
              onPageChanged: (page) {
                setState(() {
                  _activePage = page;
                  _tabController.animateTo(page,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.linear);
                });
              },
              children: [
                Container(color: Colors.red),
                Container(color: Colors.black),
                Container(color: Colors.blue),
                Container(color: Colors.yellow),
              ],
              controller: _pageController,
            ),
          )
        ],
      ),
    );
  }
}

class Article {
  final String title;
  final String date;
  final String readTime;

  Article(this.title, this.date, this.readTime);

  static List<Article> get list => [
        Article("Soviet College Admision - My Dad's Story", "Jan 2013",
            "8 min read"),
        Article("Soviet College Admision - My Dad's Story", "Jan 2013",
            "8 min read"),
      ];
}