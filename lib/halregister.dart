import 'package:aplikasi_porto/menuutama.dart';
import 'package:flutter/material.dart';

class HalRegister extends StatelessWidget {
  const HalRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cabin'),
      home: Scaffold(
        appBar: AppBar(
            title: Text("Difusi Net",
                style: TextStyle(
                  color: Colors.brown.shade700,
                  fontFamily: 'LalitaOne',
                  fontSize: 15,
                )),
            centerTitle: true,
            backgroundColor: Colors.orange.shade300,
            leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(Icons.arrow_back),
                ))),
        backgroundColor: Colors.orange.shade100,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(50),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 55),
                      child: const Text(
                        "Register For New User",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(230, 81, 0, 1),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 50),
                      child: TextField(
                          decoration: InputDecoration(
                              labelText: "Nama :",
                              labelStyle: const TextStyle(
                                fontSize: 12,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange.shade900)))),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                          decoration: InputDecoration(
                              labelText: "Email :",
                              labelStyle: const TextStyle(fontSize: 12),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange.shade900)))),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                          decoration: InputDecoration(
                              labelText: "Username :",
                              labelStyle: const TextStyle(fontSize: 12),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orange.shade900),
                              ))),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                          decoration: InputDecoration(
                              labelText: "Password :",
                              labelStyle: const TextStyle(fontSize: 12),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange.shade900)))),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FilledButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const MenuUtama();
                                    },
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                      Colors.orange.shade600)),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown.shade700),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
