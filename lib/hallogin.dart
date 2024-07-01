import 'package:aplikasi_porto/halregister.dart';
import 'package:aplikasi_porto/menuutama.dart';
import 'package:flutter/material.dart';

class Hallogin extends StatelessWidget {
  const Hallogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cabin'),
      home: Scaffold(
        backgroundColor: Colors.orange.shade100,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  margin: const EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 60),
                            child: const Image(
                                image: AssetImage(
                                    'assets/img/logoDifusiKecil.png')),
                          ),
                          const Text(
                            "PT Dinar Wahana Gemilang",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Monserat',
                                color: Color.fromRGBO(230, 81, 0, 1)),
                          ),
                        ],
                      ),

                      //container text field
                      Column(
                        children: [
                          //field username
                          Container(
                            padding: const EdgeInsets.only(top: 40),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: " Username ",
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.orange.shade900)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.orange.shade900))),
                            ),
                          ),

                          //field password
                          Container(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: " Password ",
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.orange.shade900)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.orange.shade900))),
                            ),
                          ),

                          //container button
                          Container(
                            padding: const EdgeInsets.only(top: 27),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //button login
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
                                    "  Login  ",
                                    style: TextStyle(
                                        color: Colors.brown.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),

                                //button register
                                FilledButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const HalRegister();
                                        },
                                      ),
                                    );
                                  },
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Colors.orange.shade300)),
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.brown.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
