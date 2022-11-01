import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

Productos productoFromJson(String str) => Productos.fromJson(json.decode(str));
String productoToJson(Productos data) => json.encode(data.toJson());

class Productos {
  final int? id;
  final String name;
  final String descripcion;
  final String stock;
  final String precioUnitario;
  final String imagen;
  final int? idcategoria;
  final int? idmarca;
  final String? created_at;
  final String? updated_at;

  const Productos(
      {this.id,
      required this.name,
      required this.descripcion,
      required this.stock,
      required this.precioUnitario,
      required this.imagen,
      this.idcategoria,
      this.idmarca,
      this.created_at,
      this.updated_at});

  factory Productos.fromJson(Map<String, dynamic> json) => Productos(
        id: json["id"],
        name: json["name"],
        descripcion: json["descripcion"],
        stock: json["stock"],
        precioUnitario: json["precioUnitario"],
        imagen: json["imagen"],
        idcategoria: json["idcategoria"],
        idmarca: json["idmarca"],
        created_at: json["created_at"],
        updated_at: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "descripcion": descripcion,
        "stock": stock,
        "precioUnitario": precioUnitario,
        "imagen": imagen,
        "idcategoria": idcategoria,
        "idmarca": idmarca,
        "created_at": created_at,
        "updated_at": updated_at,
      };
}
