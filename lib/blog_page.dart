import 'package:flutter/material.dart';
import 'package:myblog/article_widget.dart';
import 'package:myblog/github_button.dart';
import 'package:myblog/home_page.dart';
import 'package:myblog/small_about_widget.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ArticleWidget(
                  article: Article(
                      "استخدام ExoPlayer لتشغيل الوسائط و قوائم التشغيل والمزيد من المزايا",
                      "٢٥ مايو ٢٠٢١",
                      "١٠ دقائق"));
            },
            itemCount: 20,
          ),
        ),
        Container(
            child: Column(
              children: [
                SmallAboutWidget(),
                SizedBox(height: 8),
                GithubButton()
              ],
            ),
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16))
      ],
    );
  }
}
