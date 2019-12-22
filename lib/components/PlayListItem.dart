import 'package:flutter/material.dart';
import 'package:music_app/components/FadeImageContainer.dart';

const double SIZE = 80;

class PlayListItem extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String artist;
  final String duration;
  final bool isFavorite;
  final Function onPressed;

  const PlayListItem(
      {Key key,
      @required this.imageUrl,
      @required this.title,
      @required this.artist,
      @required this.duration,
      @required this.isFavorite,
      @required this.onPressed})
      : super(key: key);

  @override
  _PlayListItemState createState() => _PlayListItemState();
}

class _PlayListItemState extends State<PlayListItem> {
  bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = this.widget.isFavorite;
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            FadeImageContainer(
              width: SIZE,
              height: SIZE,
              imageUrl: this.widget.imageUrl,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.widget.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    this.widget.artist,
                    style: TextStyle(
                      color: Color(0XFFC3C3C3),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              this.widget.duration,
              style: TextStyle(
                color: Color(0XFFC3C3C3),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            IconButton(
              icon: Icon(
                _isFavorite ? Icons.favorite : Icons.favorite_border,
                color: _isFavorite ? Colors.red : Color(0XFFC3C3C3),
              ),
              onPressed: _toggleFavorite,
            ),
          ],
        ),
      ),
    );
  }
}
