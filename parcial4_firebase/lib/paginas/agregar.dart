import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:parcial4_etps3/paginas/user.dart';

class Agregar extends StatefulWidget {
  const Agregar({super.key});

  @override
  State<Agregar> createState() => _AgregarState();
}

class _AgregarState extends State<Agregar> {
  TextEditingController celula = TextEditingController();
  TextEditingController nombres = TextEditingController();
  TextEditingController apellidos = TextEditingController();
  TextEditingController fecha = TextEditingController();
  TextEditingController sexo = TextEditingController();
  TextEditingController tipo = TextEditingController();
  TextEditingController usuario = TextEditingController();
  TextEditingController reservas = TextEditingController();
  final firebase = FirebaseFirestore.instance;

  agregarCliente() async {
    try {
      await firebase.collection('Clientes').doc().set({
        "Celula": celula.text,
        "Nombre": nombres.text,
        "Apellido": apellidos.text,
        "Fecha_nacimiento": fecha.text,
        "Sexo": sexo.text,
        "Tipo": tipo.text,
        "Usuario": usuario.text,
        "Reservas": reservas.text,
      });
    } catch (e) {
      print(' Error...' + e.toString());
    }
  }

  Icon nombresIcon = Icon(
    Icons.account_circle,
    color: Color.fromARGB(255, 250, 250, 250),
  );
  Icon apellidosIcon = Icon(
    Icons.account_box,
    color: Color.fromARGB(255, 255, 255, 255),
  );
  Icon duiIcon = Icon(
    Icons.code,
    color: Colors.white,
  );
  Icon fechaIcon = Icon(
    Icons.timelapse,
    color: Colors.white,
  );
  Icon sexoIcon = Icon(
    Icons.gesture,
    color: Colors.white,
  );
  Icon tipoIcon = Icon(
    Icons.tab,
    color: Colors.white,
  );
  Icon usuarioIcon = Icon(
    Icons.person,
    color: Colors.white,
  );
  Icon reservaIcon = Icon(
    Icons.share,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height * 0.8,
        //width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 59, 114, 160),
              Color.fromARGB(255, 25, 23, 87),
              Colors.black,
            ],
          ),
          borderRadius: BorderRadius.circular(55.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 300,
                child: Center(
                  child: Text(
                    "TABLA CLIENTE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Usuario(
                hintText: 'Ingresar celula.....',
                labelText: 'celula',
                prefixIcon: duiIcon,
                datos: celula,
              ),
              SizedBox(
                height: 20,
              ),
              Usuario(
                hintText: 'Ingresar Nombres.....',
                labelText: 'nombre',
                prefixIcon: nombresIcon,
                datos: nombres,
              ),
              SizedBox(
                height: 20,
              ),
              Usuario(
                hintText: 'Ingresar Apellidos.....',
                labelText: 'apellido',
                prefixIcon: apellidosIcon,
                datos: apellidos,
              ),
              SizedBox(
                height: 20,
              ),
              Usuario(
                hintText: 'Ingresar Fecha de Nacimiento.....',
                labelText: 'fecha nacimiento',
                prefixIcon: fechaIcon,
                datos: fecha,
              ),
              SizedBox(
                height: 20,
              ),
              Usuario(
                hintText: 'Ingresar Sexo.....',
                labelText: 'sexo',
                prefixIcon: sexoIcon,
                datos: sexo,
              ),
              SizedBox(
                height: 20,
              ),
              Usuario(
                hintText: 'Ingresar tipo.....',
                labelText: 'tipo',
                prefixIcon: tipoIcon,
                datos: tipo,
              ),
              SizedBox(
                height: 20,
              ),
              Usuario(
                hintText: 'Ingresar usuario.....',
                labelText: 'usuario',
                prefixIcon: usuarioIcon,
                datos: usuario,
              ),
              SizedBox(
                height: 20,
              ),
              Usuario(
                hintText: 'Ingresar reserva.....',
                labelText: 'reserva',
                prefixIcon: reservaIcon,
                datos: reservas,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        //print(sexo.text);
                        agregarCliente();
                      },
                      child: Text(
                        'Agregar',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 238, 103, 24)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
