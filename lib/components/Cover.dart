import 'package:flutter/material.dart';
import 'package:music_app/components/FadeImageContainer.dart';

class Cover extends StatelessWidget {
  final String imageUrl;

  const Cover({Key key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: FadeImageContainer(
        imageUrl: this.imageUrl,
        width: 160,
      ),
    );
  }
}
