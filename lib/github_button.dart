import 'package:flutter/material.dart';

class GithubButton extends StatelessWidget {
  const GithubButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var white = Colors.white;
    return MaterialButton(
      onPressed: () {},
      elevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      color: Color(0xff2b2b2b),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/image/github.png", width: 25, height: 25,fit: BoxFit.fitHeight,color: Colors.white,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              width: 0.5,
              height: 35,
              color: Colors.black,
            ),
          ),
          Text(
            '@m7mdra',
            style: TextStyle(color: white),
          )
        ],
      ),
    );
  }
}
