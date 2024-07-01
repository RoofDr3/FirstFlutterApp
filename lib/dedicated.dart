import 'package:aplikasi_porto/pembelian.dart';
import 'package:flutter/material.dart';

class DedicatedPage extends StatelessWidget {
  const DedicatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cabin'),
      home: Scaffold(
        backgroundColor: Colors.orange.shade100,
        appBar: AppBar(
          backgroundColor: Colors.orange.shade300,
          title: Text("Difusi Net",
              style: TextStyle(
                  color: Colors.brown.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          centerTitle: true,
          leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(Icons.arrow_back),
              )),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PembelianPage();
                  }));
                },
                icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: " Nama Lokasi ",
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange.shade900)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange.shade900))),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: " Alamat Pemasangan ",
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange.shade900)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange.shade900))),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: " Koordinat Lokasi ",
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange.shade900)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange.shade900))),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: " Perangkat Tambahan ",
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange.shade900)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.orange.shade900))),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
