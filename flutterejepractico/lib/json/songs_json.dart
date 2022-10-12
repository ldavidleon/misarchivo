import 'package:flutter/material.dart';

const List song_type_1 = [
  "Felinos",
  "Caninos",
  "Aves",
  "Reptiles",
  "Anfibios",
  "Peces",
];
const List song_type_2 = [
  "Podcasts",
  "Made For You",
  "Charts",
  "New Releases",
  "Discover",
  "Concerts",
];

const List salbum = [
  {
    "img": "assets/images/n1.jpg",
    "title": "Naturaleza",
    "description": "Los mejores sonidos relajantes.",
  },
  {
    "img": "assets/images/n2.jpg",
    "title": "Instrumentos",
    "description": "Las mejores melodias.",
  },
  {
    "img": "assets/images/n3.jpg",
    "title": "Para Dormir",
    "description": "Meditar y dejar su mente en blanco.",
  }
];

const List songs = [
  {
    "img": "assets/images/leon_1.jpg",
    "title": "Leon",
    "description": "Rey de la Selva.",
    "song_count": "1 songs",
    "date": "about 1 hr",
    "color": Color(0xFFf69129),
    "song_url": "songs/01leon.mp3",
    "songs": [
      {"title": "Rugido de Leon", "duration": "0:12"},
    ]
  },
  {
    "img": "assets/images/jaguar_2.jpg",
    "title": "Jaguar",
    "description": "Felino mas grande de America.",
    "song_count": "1 songs",
    "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/02jaguar.mp3",
    "songs": [
      {"title": "Rugido de Jaguar", "duration": "0:15"},
    ]
  },
  {
    "img": "assets/images/chita_3.jpg",
    "title": "Guepardo",
    "description": "Corre a la velocidad de 115km/h.",
    "song_count": "1 songs",
    "date": "about 10 hr",
    "color": Color.fromARGB(255, 217, 234, 65),
    "song_url": "songs/03guepardo.mp3",
    "songs": [
      {"title": "Rugido Guepardo", "duration": "0:03"},
    ]
  },
  {
    "img": "assets/images/lobo_1.jpg",
    "title": "Lobo",
    "description": "El lobo es solitario.",
    "song_count": "1 songs",
    "date": "about 21 hr",
    "color": Color(0xFFbad6ec),
    "song_url": "songs/04lobo.mp3",
    "songs": [
      {"title": "Luna Llena", "duration": "1:21"},
    ]
  },
  {
    "img": "assets/images/hiena_2.jpg",
    "title": "Hiena",
    "description": "Su gruñido parece risa.",
    "song_count": "1 songs",
    "date": "about 11 hr",
    "color": Color(0xFF93689a),
    "song_url": "songs/05hiena.mp3",
    "songs": [
      {"title": "Risa de hiena salvaje", "duration": "1:21"},
    ]
  },
  {
    "img": "assets/images/perro_3.jpg",
    "title": "Perro Dalmata",
    "description": "Protagonista pelicula 101 dalmatas.",
    "song_count": "1 songs",
    "date": "about 7 hr",
    "color": Color(0xFFa4c4d3),
    "song_url": "songs/06dalmata.mp3",
    "songs": [
      {"title": "Ladrido", "duration": "1:21"},
    ]
  },
  {
    "img": "assets/images/ave_1.jpg",
    "title": "Guacamaya",
    "description": "Tiene plumas muy coloridas.",
    "song_count": "1 songs",
    "date": "about 1 hr",
    "color": Color.fromARGB(255, 226, 65, 11),
    "song_url": "songs/07guacamaya.mp3",
    "songs": [
      {"title": "volando en la selva", "duration": "2:01"},
    ]
  },
  {
    "img": "assets/images/ave_2.jpg",
    "title": "Aguila",
    "description": "Posee una gran vision",
    "song_count": "1 songs",
    "date": "2 hr",
    "color": Color.fromARGB(252, 107, 203, 255),
    "song_url": "songs/08aguila.mp3",
    "songs": [
      {"title": "NorteAmerica Silvestre", "duration": "3:20"},
    ]
  },
  {
    "img": "assets/images/ave_3.jpg",
    "title": "Tucan",
    "description": "Tiene un gran pico",
    "song_count": "1 songs",
    "date": "3 hr",
    "color": Color.fromARGB(255, 193, 108, 22),
    "song_url": "songs/09tucan.mp3",
    "songs": [
      {"title": "Tucan Dan", "duration": "1:21"},
    ]
  },
  {
    "img": "assets/images/img_10.jpg",
    "title": "Mood Booster",
    "description": "Get happy with today's dose of feel-good songs",
    "song_count": "75 songs",
    "date": "3 hr 56 min",
    "color": Color(0xFF4e6171),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  }
];

const List dogs = [
  {
    "img": "assets/images/leon_1.jpg",
    "title": "Leon",
    "description": "Rey de la Selva.",
    "song_count": "100 songs",
    "date": "about 19 hr",
    "color": Color(0xFFf69129),
    "song_url": "songs/01leon.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/jaguar_2.jpg",
    "title": "Jaguar",
    "description": "Felino mas grande de America.",
    "song_count": "324 songs",
    "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/02jaguar.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/chita_3.jpg",
    "title": "Guepardo",
    "description": "Corre a la velocidad de 115km/h.",
    "song_count": "195 songs",
    "date": "about 10 hr",
    "color": Color(0xFF58546c),
    "song_url": "songs/03guepardo.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
];

const List caninos = [
  {
    "img": "assets/images/lobo_1.jpg",
    "title": "Lobo",
    "description": "El lobo es solitario.",
    "song_count": "10 songs",
    "date": "about 4 hr",
    "color": Color(0xFFf69129),
    "song_url": "songs/01leon.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/hiena_2.jpg",
    "title": "Hiena",
    "description": "Caza de noche.",
    "song_count": "32 songs",
    "date": "about 1 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/02jaguar.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/perro_3.jpg",
    "title": "Dalmata",
    "description": "Es blanco con manchas negras.",
    "song_count": "19 songs",
    "date": "about 03 hr",
    "color": Color(0xFF58546c),
    "song_url": "songs/03guepardo.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_4.jpg",
    "title": "Lo-Fi Beats",
    "description": "Beats to relax, study and focus.",
    "song_count": "599 songs",
    "date": "about 21 hr",
    "color": Color(0xFFbad6ec),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_2.jpg",
    "title": "Chill Lofi Study Beats",
    "description": "The perfect study beats, twenty four seven.",
    "song_count": "317 songs",
    "date": "about 11 hr",
    "color": Color(0xFF93689a),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_6.jpg",
    "title": "Chill Hits",
    "description": "Kick back to the best new and recent chill tunes.",
    "song_count": "130 songs",
    "date": "about 7 hr",
    "color": Color(0xFFa4c4d3),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_1.jpg",
    "title": "Dark & Stormy",
    "description": "Beautifully dark, dramatic tracks.",
    "song_count": "50 songs",
    "date": "about 17 hr",
    "color": Color(0xFF5e4f78),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/img_8.jpg",
    "title": "Feel Good Piano",
    "description": "Positive piano music",
    "song_count": "69 songs",
    "date": "2 hr 14 min",
    "color": Color(0xFFa4c1ad),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_9.jpg",
    "title": "Sad Songs",
    "description": "Beautiful songs to break your heart...",
    "song_count": "60 songs",
    "date": "3 hr 25 min",
    "color": Color(0xFFd9e3ec),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_10.jpg",
    "title": "Mood Booster",
    "description": "Get happy with today's dose of feel-good songs",
    "song_count": "75 songs",
    "date": "3 hr 56 min",
    "color": Color(0xFF4e6171),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  }
];

const List aves = [
  {
    "img": "assets/images/ave_1.jpg",
    "title": "Guacamaya",
    "description": "Tiene muchos colores.",
    "song_count": "10 songs",
    "date": "about 4 hr",
    "color": Color(0xFFf69129),
    "song_url": "songs/01leon.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/ave_2.jpg",
    "title": "Aguila",
    "description": "Tiene una gran vision.",
    "song_count": "32 songs",
    "date": "about 1 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/02jaguar.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/ave_3.jpg",
    "title": "Tucan",
    "description": "Tiene un gran pico.",
    "song_count": "19 songs",
    "date": "about 03 hr",
    "color": Color(0xFF58546c),
    "song_url": "songs/03guepardo.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_4.jpg",
    "title": "Lo-Fi Beats",
    "description": "Beats to relax, study and focus.",
    "song_count": "599 songs",
    "date": "about 21 hr",
    "color": Color(0xFFbad6ec),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_2.jpg",
    "title": "Chill Lofi Study Beats",
    "description": "The perfect study beats, twenty four seven.",
    "song_count": "317 songs",
    "date": "about 11 hr",
    "color": Color(0xFF93689a),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_6.jpg",
    "title": "Chill Hits",
    "description": "Kick back to the best new and recent chill tunes.",
    "song_count": "130 songs",
    "date": "about 7 hr",
    "color": Color(0xFFa4c4d3),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_1.jpg",
    "title": "Dark & Stormy",
    "description": "Beautifully dark, dramatic tracks.",
    "song_count": "50 songs",
    "date": "about 17 hr",
    "color": Color(0xFF5e4f78),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/img_8.jpg",
    "title": "Feel Good Piano",
    "description": "Positive piano music",
    "song_count": "69 songs",
    "date": "2 hr 14 min",
    "color": Color(0xFFa4c1ad),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_9.jpg",
    "title": "Sad Songs",
    "description": "Beautiful songs to break your heart...",
    "song_count": "60 songs",
    "date": "3 hr 25 min",
    "color": Color(0xFFd9e3ec),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_10.jpg",
    "title": "Mood Booster",
    "description": "Get happy with today's dose of feel-good songs",
    "song_count": "75 songs",
    "date": "3 hr 56 min",
    "color": Color(0xFF4e6171),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  }
];
