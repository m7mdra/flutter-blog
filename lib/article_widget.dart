import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myblog/home_page.dart';
import 'package:myblog/text_with_icon.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(24),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Font Awesome gives you scalable vector icons that can instantly be customized — size, color, drop shadow, and anything that can be done with the power of CSS.',
              style: GoogleFonts.lato(),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                TextWithIcon(
                    text: article.date,
                    icon: Icons.calendar_today),
                SizedBox(
                  width: 80,
                ),
                TextWithIcon(
                    text: article.readTime,
                    icon: Icons.access_time),
              ],
            ),
          ],
        ),
      ),
      title: Text(
        article.title,
        style: GoogleFonts.lato(
            fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );
  }
}
