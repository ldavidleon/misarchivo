import 'package:flutter/material.dart';
//import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutterejepractico/json/songs_json.dart';
import 'package:flutterejepractico/pages/album_page.dart';
//import 'package:flutterejepractico/pages/album_pageCan.dart';
//import 'package:flutterejepractico/pages/canino.dart';
import 'package:flutterejepractico/pages/color.dart';

//import 'package:flutterejepractico/pages/home_page.dart';
//import 'package:flutterejepractico/pages/root_app.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu1 = 0;
  int activeMenu2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: color1,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        )),
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "MusicApp",
                style: TextStyle(
                    fontSize: 20, color: white, fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                radius: 23,
                backgroundColor: black,
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 20,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/vector-premium/perfil-hombre-dibujos-animados_18591-58482.jpg?w=740"),
                    radius: 17,
                  ),
                ),
              ),
              //Icon(FeatherIcons.circle)
            ],
          ),
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    if (activeMenu1 == 0) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Row(
                        children: List.generate(song_type_1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: GestureDetector(
                          onTap: () {
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CaninoLista()));*/
                            setState(() {
                              activeMenu1 = index;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                song_type_1[index],
                                style: TextStyle(
                                    fontSize: 15,
                                    color:
                                        activeMenu1 == index ? primario : grey,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              activeMenu1 == index
                                  ? Container(
                                      width: 10,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: primario,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                        children: List.generate(songs.length - 7, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    alignment: Alignment.bottomCenter,
                                    child: MusicDetailPage(
                                      title: songs[index]['title'],
                                      color: songs[index]['color'],
                                      description: songs[index]['description'],
                                      img: songs[index]['img'],
                                      songUrl: songs[index]['song_url'],
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
                                        image: AssetImage(songs[index]['img']),
                                        fit: BoxFit.cover),
                                    color: primario,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                songs[index]['title'],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 150,
                                height: 80,
                                child: Text(
                                  songs[index]['description'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                ),
                //aqui
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text("Albums",
                          style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
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
                            /*Navigator.push(
                        context,
                        PageTransition(
                            alignment: Alignment.bottomCenter,
                            child: (AlbumPage(
                              song: songss[index],
                            )),
                            type: PageTransitionType.scale),
                      );*/
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(salbum[index]['img']),
                                        fit: BoxFit.cover),
                                    color: primario,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                salbum[index]['title'],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  width: 180,
                                  child: Text(
                                    salbum[index]['description'],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: grey,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                ),
              ],
            ),

            //SizedBox(
            //height: 10,
            //),
            SizedBox(
              height: 1,
            ),

            //tercerlista
            SizedBox(
              height: 20,
            ),
            /*aqui comienza donde dice podcast
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children: List.generate(song_type_2.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeMenu2 = index;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              song_type_2[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: activeMenu2 == index ? primario : grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activeMenu2 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: primario,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                      children: List.generate(songs.length - 7, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomCenter,
                                  child: AlbumPage(
                                    song: songs[index],
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
                                      image: AssetImage(songs[index]['img']),
                                      fit: BoxFit.cover),
                                  color: primario,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              songs[index]['title'],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                width: 180,
                                child: Text(
                                  songs[index]['description'],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: grey,
                                      fontWeight: FontWeight.w600),
                                )),
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
            ],
          ),
          */ //aqui termina donde dice podcasts
          ],
        ),
      );
    } else if (activeMenu1 == 1) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Row(
                        children: List.generate(song_type_1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: GestureDetector(
                          onTap: () {
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CaninoLista()));*/
                            setState(() {
                              activeMenu1 = index;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                song_type_1[index],
                                style: TextStyle(
                                    fontSize: 15,
                                    color:
                                        activeMenu1 == index ? primario : grey,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              activeMenu1 == index
                                  ? Container(
                                      width: 10,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: primario,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                                    child: MusicDetailPage(
                                      title: caninos[index]['title'],
                                      color: caninos[index]['color'],
                                      description: caninos[index]
                                          ['description'],
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
                                        image:
                                            AssetImage(caninos[index]['img']),
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
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 150,
                                height: 80,
                                child: Text(
                                  caninos[index]['description'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text("Albums",
                          style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
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
                            /*Navigator.push(
                        context,
                        PageTransition(
                            alignment: Alignment.bottomCenter,
                            child: (AlbumPage(
                              song: songss[index],
                            )),
                            type: PageTransitionType.scale),
                      );*/
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(salbum[index]['img']),
                                        fit: BoxFit.cover),
                                    color: primario,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                salbum[index]['title'],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  width: 180,
                                  child: Text(
                                    salbum[index]['description'],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: grey,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                ),
              ],
            ),

            // SizedBox(
            // height: 10,
            //),
            /*aqui comienza donde dice podcast
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children: List.generate(song_type_2.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeMenu2 = index;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              song_type_2[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: activeMenu2 == index ? primario : grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activeMenu2 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: primario,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                      children: List.generate(songs.length - 7, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomCenter,
                                  child: AlbumPage(
                                    song: songs[index],
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
                                      image: AssetImage(songs[index]['img']),
                                      fit: BoxFit.cover),
                                  color: primario,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              songs[index]['title'],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                width: 180,
                                child: Text(
                                  songs[index]['description'],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: grey,
                                      fontWeight: FontWeight.w600),
                                )),
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
            ],
          ),
          */ //aqui termina donde dice podcasts
          ],
        ),
      );
    } else {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Row(
                        children: List.generate(song_type_1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: GestureDetector(
                          onTap: () {
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CaninoLista()));*/
                            setState(() {
                              activeMenu1 = index;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                song_type_1[index],
                                style: TextStyle(
                                    fontSize: 15,
                                    color:
                                        activeMenu1 == index ? primario : grey,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              activeMenu1 == index
                                  ? Container(
                                      width: 10,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: primario,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                        children: List.generate(aves.length - 7, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    alignment: Alignment.bottomCenter,
                                    child: MusicDetailPage(
                                      title: aves[index]['title'],
                                      color: aves[index]['color'],
                                      description: aves[index]['description'],
                                      img: aves[index]['img'],
                                      songUrl: aves[index]['song_url'],
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
                                        image: AssetImage(aves[index]['img']),
                                        fit: BoxFit.cover),
                                    color: primario,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                aves[index]['title'],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 150,
                                height: 80,
                                child: Text(
                                  aves[index]['description'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text("Albums",
                          style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
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
                            /*Navigator.push(
                        context,
                        PageTransition(
                            alignment: Alignment.bottomCenter,
                            child: (AlbumPage(
                              song: songss[index],
                            )),
                            type: PageTransitionType.scale),
                      );*/
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(salbum[index]['img']),
                                        fit: BoxFit.cover),
                                    color: primario,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                salbum[index]['title'],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  width: 180,
                                  child: Text(
                                    salbum[index]['description'],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: grey,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                ),
              ],
            ),

            /*aqui comienza donde dice podcast
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children: List.generate(song_type_2.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeMenu2 = index;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              song_type_2[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: activeMenu2 == index ? primario : grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activeMenu2 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: primario,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                      children: List.generate(songs.length - 7, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomCenter,
                                  child: AlbumPage(
                                    song: songs[index],
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
                                      image: AssetImage(songs[index]['img']),
                                      fit: BoxFit.cover),
                                  color: primario,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              songs[index]['title'],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                width: 180,
                                child: Text(
                                  songs[index]['description'],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: grey,
                                      fontWeight: FontWeight.w600),
                                )),
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
            ],
          ),
          */ //aqui termina donde dice podcasts
          ],
        ),
      );
    }
  }
}
