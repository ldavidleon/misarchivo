// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutterejepractico/json/songs_json.dart';
import 'package:flutterejepractico/pages/color.dart';
import 'package:flutterejepractico/pages/music_detail_page2.dart';

class AlbumPageCan extends StatefulWidget {
  final dynamic song2;

  const AlbumPageCan({
    Key? key,
    required this.song2,
  }) : super(key: key);

  @override
  State<AlbumPageCan> createState() => _AlbumPageCanState();
}

class _AlbumPageCanState extends State<AlbumPageCan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    List songAlbums2 = widget.song2['caninos'];
    return SingleChildScrollView(
      child: Stack(children: [
        Column(
          children: [
            Container(
              width: size.width,
              height: 220,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.song2['img']),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.song2['title'],
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: white)),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 8, 99, 144),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 8, bottom: 8),
                      child: Text("Subscribe", style: TextStyle(color: white)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                    children: List.generate(caninos.length - 7, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: MusicDetailPage2(
                                  title: caninos[index]['title'],
                                  color: caninos[index]['color'],
                                  description: caninos[index]['description'],
                                  img: caninos[index]['img'],
                                  songUrl: caninos[index]['song_url'],
                                ),
                                type: PageTransitionType.scale));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(caninos[index]['img']),
                                    fit: BoxFit.cover),
                                color: primario,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            caninos[index]['title'],
                            style: TextStyle(
                                fontSize: 15,
                                color: white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              width: size.width - 210,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    caninos[index]['song_count'],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    caninos[index]['date'],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: grey,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  );
                })),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: List.generate(songAlbums2.length, (index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: MusicDetailPage2(
                                title: widget.song2[index]['title'],
                                color: widget.song2[index]['color'],
                                description: widget.song2[index]['description'],
                                img: widget.song2[index]['img'],
                                songUrl: widget.song2[index]['song_url'],
                              ),
                              type: PageTransitionType.scale));
                    },
                    child: Row(
                      children: [
                        Container(
                          width: (size.width - 60) * 0.77,
                          height: 50,
                          child: Text(
                            "${index + 1} " + songAlbums2[index]['title'],
                            style: TextStyle(color: white),
                          ),
                        ),
                        Container(
                          width: (size.width - 60) * 0.23,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                songAlbums2[index]['duration'],
                                style: TextStyle(color: grey, fontSize: 14),
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: grey.withOpacity(0.8),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: white,
                                    size: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              IconButton(
                  icon: Icon(
                    FeatherIcons.moreVertical,
                    color: white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        )
      ]),
    );
  }
}
