import 'package:application_ecomerce/pages/catalogo.dart';
import 'package:application_ecomerce/pages/homepage.dart';
import 'package:application_ecomerce/pages/login.dart';
import 'package:application_ecomerce/pages/register_screen.dart';
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
      title: 'Ecommerce App',
      initialRoute: 'login',
      theme: ThemeData(
       
        primarySwatch: Colors.orange,
      ),
      //home: HomePage(),
      routes: {
        'Catalogo_page': (context) => CatalogoPage(),
        'login' : (_) => LoginScreen(),
        'register': (_) => RegisterScreen(),


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
