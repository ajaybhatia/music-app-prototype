import 'package:flutter/material.dart';
import 'package:music_app/components/Avatar.dart';
import 'package:music_app/components/Cover.dart';
import 'package:music_app/components/PlayListItem.dart';
import 'package:music_app/components/Player.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _avatars = [
    Avatar(
      name: 'Elina',
      imageUrl: 'https://i.pravatar.cc/150?img=3',
    ),
    Avatar(
      name: 'Amelia',
      imageUrl: 'https://i.pravatar.cc/150?img=4',
    ),
    Avatar(
      name: 'Charlie',
      imageUrl: 'https://i.pravatar.cc/150?img=5',
    ),
    Avatar(
      name: 'Bianca',
      imageUrl: 'https://i.pravatar.cc/150?img=6',
    ),
  ];

  final List<Widget> _covers = [
    Cover(
      imageUrl:
          'https://cdn.dribbble.com/users/31348/screenshots/5383318/aid_vinyl_19_4x.jpg',
    ),
    Cover(
      imageUrl:
          'https://cdn.dribbble.com/users/134635/screenshots/5594638/bohemian-rhapsody.jpg',
    ),
    Cover(
      imageUrl:
          'https://cdn.dribbble.com/users/62245/screenshots/4717023/entourloop-2018-lp-d.jpg',
    ),
    Cover(
      imageUrl:
          'https://cdn.dribbble.com/users/56953/screenshots/5638476/dribbble_10x18_ahood-03_2x.png',
    ),
    Cover(
      imageUrl:
          'https://cdn.dribbble.com/users/56953/screenshots/9025513/media/3ec50e59507cec502d0d13dcdc340703.png',
    ),
  ];

  String _artist = '';
  String _title = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.lightGreen[300],
                  Colors.green[600],
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Hello',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Amelia Nelson',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: Offset(0, 10),
                              ),
                            ],
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://i.pravatar.cc/150?img=1',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: Container(
                              height: 5,
                              width: MediaQuery.of(context).size.width * 0.30,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: _avatars,
                          ),
                          Container(
                            height: 120,
                            margin: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 24,
                            ),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: _covers,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16,
                              bottom: 8,
                            ),
                            child: Text(
                              'playlists'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Flexible(
                            child: ListView(
                              children: <Widget>[
                                PlayListItem(
                                  imageUrl:
                                      'https://cdn.dribbble.com/users/31348/screenshots/5383318/aid_vinyl_19_4x.jpg',
                                  artist: 'Elephant',
                                  title: 'Getting Younger',
                                  duration: '2:37',
                                  isFavorite: true,
                                  onPressed: () => setState(() {
                                    _artist = 'Elephant';
                                    _title = 'Getting Younger';
                                  }),
                                ),
                                PlayListItem(
                                  imageUrl:
                                      'https://cdn.dribbble.com/users/134635/screenshots/5594638/bohemian-rhapsody.jpg',
                                  artist: 'Alan Walker',
                                  title: 'On My Way',
                                  duration: '3:30',
                                  isFavorite: false,
                                  onPressed: () => setState(() {
                                    _artist = 'Alan Walker';
                                    _title = 'On My Way';
                                  }),
                                ),
                                PlayListItem(
                                  imageUrl:
                                      'https://cdn.dribbble.com/users/62245/screenshots/4717023/entourloop-2018-lp-d.jpg',
                                  artist: 'Marshmella',
                                  title: 'One Thing Right',
                                  duration: '2:45',
                                  isFavorite: false,
                                  onPressed: () => setState(() {
                                    _artist = 'Marshmella';
                                    _title = 'One Thing Right';
                                  }),
                                ),
                                SizedBox(
                                  height: 64,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          (_artist != '' || _title != '')
              ? Player(
                  artist: _artist,
                  title: _title,
                )
              : Container(),
        ],
      ),
    );
  }
}
