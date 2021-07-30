import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myblog/avatar_widget.dart';

class LogoNameWidget extends StatelessWidget {
  const LogoNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AvatarWidget(size: Size(50,50)),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mohammad Elshiekh',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              '@m7mdra',
              style: Theme.of(context).textTheme.caption?.copyWith(
                  fontFamily: GoogleFonts.latoTextTheme().caption?.fontFamily),
            )
          ],
        )
      ],
    );
  }
}
