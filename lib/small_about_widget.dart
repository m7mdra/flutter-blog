import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myblog/avatar_widget.dart';

class SmallAboutWidget extends StatelessWidget {
  const SmallAboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isMobileScreen(context)) AvatarWidget(size: Size(100, 100)),
        if (isMobileScreen(context)) SizedBox(width: 16),
        Column(
          children: [
            if (MediaQuery.of(context).size.width > 400)
              AvatarWidget(size: Size(150, 150)),
            SizedBox(height: 8),
            Text(
              'Mohammed Elshiekh',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Senior Mobile developer',
              style: GoogleFonts.lato(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              'Android/iOS Native, Flutter',
              style: GoogleFonts.lato(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }

  bool isMobileScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= 400;
}