import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;

  const FadeImageContainer({
    Key key,
    this.height = 0,
    @required this.width,
    @required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(16),
      ),
      child: Container(
        width: this.width,
        height: this.height,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0XFFD9D9D9),
              blurRadius: 10,
              spreadRadius: 10,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: this.imageUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
