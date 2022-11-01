import 'dart:convert';
import 'package:application_ecomerce/pages/carrito.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecomerce"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 252, 7, 7),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CartPage()),
                );
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      drawer: SidebarX(
        controller: SidebarXController(selectedIndex: 0, extended: true),
        items: const [
          SidebarXItem(icon: Icons.home, label: 'Home'),
          SidebarXItem(icon: Icons.search, label: 'Search'),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Buscar",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Productos",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            /*FutureBuilder(
                future: ,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data);
                  return Text("Ecomerce");
                } else if (snapshot.hasError) {
                  print(snapshot.error);
                }
                return Text("Error");
              },
            ), */
          ],
        ),
      ),
    );
  }

  void _catalogoShow() async {
    try {
      var response = await Dio().get("http://127.0.0.1:8000/api/producto");
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
