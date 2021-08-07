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
        if (isMobileScreen(context)) SizedBox(width: 8),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isLargeScreen(context)) AvatarWidget(size: Size(120, 120)),
            if (isLargeScreen(context)) SizedBox(height: 8),
            Text(
              'Mohammed Elshiekh',
              style:
                  GoogleFonts.raleway(fontWeight: FontWeight.w900, fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Senior Mobile developer',
              style: GoogleFonts.lato(color: Colors.grey, fontSize: 15),
            ),
            Text(
              'Android/iOS Native, Flutter',
              style: GoogleFonts.lato(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(height: 4),

            Text(
              'Consultant @ UNDP sudan',
              style: GoogleFonts.lato(color: Colors.grey, fontSize: 15),
            ),

          ],
        ),
      ],
    );
  }

  bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 400;

  bool isMobileScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= 400;
}
