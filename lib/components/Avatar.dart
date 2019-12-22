import 'package:flutter/material.dart';

const double SIZE = 68;

class Avatar extends StatelessWidget {
  final String imageUrl;
  final String name;

  const Avatar({Key key, this.imageUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: SIZE,
            width: SIZE,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SIZE / 2),
              image: DecorationImage(
                image: NetworkImage(
                  this.imageUrl,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0XFFD9D9D9),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            this.name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
