import 'package:flutter/material.dart';

class AvatarWidget extends StatefulWidget {
  final Size size;

  const AvatarWidget({Key? key, required this.size}) : super(key: key);

  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  bool _enableAnimation = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _enableAnimation = !_enableAnimation;
        });
      },
      child: ClipOval(
        child: Image.asset(
          _enableAnimation ? 'assets/image/logo.gif' : 'assets/image/logo.png',
          fit: BoxFit.contain,
          width: widget.size.width,
          height: widget.size.height,
          errorBuilder: (BuildContext context, _, ignore) {
            return Image.asset('assets/image/logo.png',
                width: widget.size.width, height: widget.size.height);
          },
        ),
      ),
    );
  }
}
