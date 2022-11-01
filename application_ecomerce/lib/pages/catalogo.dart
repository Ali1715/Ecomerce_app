import 'package:flutter/material.dart';
import 'package:application_ecomerce/model/productomodel.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CatalogoPage extends StatefulWidget {
  const CatalogoPage({Key? key}) : super(key: key);
  @override
  State<CatalogoPage> createState() => _Catalogo();
}

class _Catalogo extends State<CatalogoPage> {
  late Future<List<Productos>> _listaProductos;

  Future<List<Productos>> _getCatalogo() async {
    final uri = Uri.parse("http://192.168.0.16:8000/cliente/catalogo");
    http.Response response = await http.get(uri);

    List<Productos> catalogo = [];
    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);

      final jsonData = json.decode(json.encode(body));

      for (var item in jsonData["data"]) {
        catalogo.add(Productos(
            name: "name",
            descripcion: "descripcion",
            stock: "stock",
            precioUnitario: "precioUnitario",
            imagen: "imagen"));
      }

      return catalogo;
    } else {
      throw Exception("Fallo la conexion");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
