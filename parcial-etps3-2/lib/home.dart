import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:parcial2_etps3/comida.dart';
import 'package:parcial2_etps3/comida.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(20, 48, 20, 0),
      child: Column(
          //mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center, //alinear al centro
          children: [
            Container(
              //dibuja boton de menu
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 144, 215),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2.0,
                    )
                  ]),
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/pict/135579140_248966746754779_1436238107869001113_n.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "Tortas El Sarco",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 253, 253),
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              child: TextField(
                cursorColor: Colors.white.withOpacity(0.3),
                decoration: InputDecoration(
                    //buscar
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 0.0),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    hintText: "Buscar"),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TabBar(
              indicatorColor:
                  Color.fromARGB(255, 252, 252, 252), //menu activo border
              unselectedLabelColor:
                  Color.fromARGB(26, 252, 0, 0), //menu inactivo
              labelColor: Color.fromARGB(255, 255, 255, 255), //menu activo
              isScrollable: true,
              labelStyle: const TextStyle(fontSize: 17.0),
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "Hamburguesa",
                ),
                Tab(
                  text: "Pollo",
                ),
                Tab(
                  text: "Pizza",
                ),
                Tab(
                  text: "Tacos",
                ),
                Tab(
                  text: "Postre",
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Expanded(
                child: TabBarView(
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida(
                      "assets/pict/h1.jpg",
                      "Gran Hamburguesa",
                      "hola",
                      "3.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/h2.jpg",
                      "La correcta",
                      "hola",
                      "6.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/h3.jpg",
                      "Doble Burger",
                      "hola",
                      "5.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/h4.jpg",
                      "Little Burger",
                      "hola",
                      "3.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/h5.jpg",
                      "Big Big Burger",
                      "hola",
                      "2.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida(
                      "assets/pict/pp1.jpg",
                      "pollo asado",
                      "hola",
                      "5.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/pp2.jpg",
                      "pollo frito",
                      "hola",
                      "1.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/pp3.jpg",
                      "pollo guisado",
                      "hola",
                      "2.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/pp4.jpg",
                      "pollo al carbon",
                      "hola",
                      "2.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/pp5.jpg",
                      "alitas",
                      "hola",
                      "4.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida(
                      "assets/pict/c1.jpg",
                      "peperoni",
                      "hola",
                      "3.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/c2.jpg",
                      "hawaina",
                      "hola",
                      "2.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/c3.jpg",
                      "queso",
                      "hola",
                      "5.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/c4.jpg",
                      "carne",
                      "hola",
                      "3.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/c5.jpg",
                      "pizza grande",
                      "hola",
                      "5.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida(
                      "assets/pict/cc1.jpg",
                      "gran taco",
                      "hola",
                      "1.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/cc2.jpg",
                      "medio taco",
                      "hola",
                      "4.20",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/cc3.jpg",
                      "taco pastor",
                      "hola",
                      "6.90",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/cc4.jpg",
                      "taco loco",
                      "hola",
                      "7.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/cc5.jpg",
                      "super taco",
                      "hola",
                      "3.99",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    comida(
                      "assets/pict/p1.jpg",
                      "tres leche",
                      "hola",
                      "1.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/p2.jpg",
                      "pastel",
                      "hola",
                      "2.00",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/p3.jpg",
                      "pastel piña",
                      "hola",
                      "4.20",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/p4.jpg",
                      "pastel 4",
                      "hola",
                      "1.80",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    comida(
                      "assets/pict/p5.jpg",
                      "pastel vainilla",
                      "hola",
                      "7.50",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
              ],
              controller: _tabController,
            )),
          ]),
    ));
  }
}
