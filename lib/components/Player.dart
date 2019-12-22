import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  final String title;
  final String artist;

  const Player({Key key, @required this.title, @required this.artist})
      : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  bool _isPlaying;

  @override
  void initState() {
    super.initState();
    _isPlaying = false;
  }

  void _togglePlaying() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      left: 16,
      right: 16,
      top: MediaQuery.of(context).size.height * 0.90,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(6),
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(24),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.lightGreen[300],
              Colors.green[600],
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.orange[500],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this.widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      this.widget.artist,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                child: Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(38),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Icon(
                        _isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: _togglePlaying,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
