import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;

  const TextWithIcon({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey, size: 20),
        SizedBox(width: 16),
        Text(text, style: GoogleFonts.lato(color: Colors.grey)),
      ],
    );
  }
}
