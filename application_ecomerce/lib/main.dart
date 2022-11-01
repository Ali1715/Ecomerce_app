import 'package:application_ecomerce/pages/catalogo.dart';
import 'package:application_ecomerce/pages/homepage.dart';
import 'package:application_ecomerce/pages/singup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

import 'dart:async';

void main() {
  runApp(const MyApp());
}

/// `MyApp` is a `StatelessWidget` that returns a `MaterialApp` widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        'Catalogo_page': (context) => CatalogoPage(),
      },
    );
  }

  /* void _catalogoShow() async {
    Dio dio = new Dio();

    Productos productos = Productos(
        name: 'name',
        descripcion: 'descripcion',
        stock: 'stock',
        precioUnitario: 'precioUnitario',
        imagen: 'imagen');
        dio.get("http://127.0.0.1:8000/api/producto",  Productos.fromJson(json.decode(str)));
  }*/

}
