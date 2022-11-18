// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class Usuario extends StatelessWidget {
  TextEditingController datos = TextEditingController();
  Icon prefixIcon;
  String labelText;
  String hintText;
  Usuario({
    Key? key,
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
    required this.datos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: TextField(
        controller: datos,
        cursorColor: Color.fromARGB(255, 204, 60, 38),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          prefixIcon: prefixIcon,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          alignLabelWithHint: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white38,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(width: 2, color: Color.fromARGB(255, 162, 175, 76)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
