import 'package:aplikasi_porto/account.dart';
import 'package:aplikasi_porto/dedicated.dart';
import 'package:aplikasi_porto/hallogin.dart';
import 'package:aplikasi_porto/pembelian.dart';
import 'package:aplikasi_porto/retail.dart';
import 'package:aplikasi_porto/soho.dart';
import 'package:aplikasi_porto/sohopublic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuUtama extends StatelessWidget {
  const MenuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquerywidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cabin'),
      home: Scaffold(
          backgroundColor: Colors.orange.shade100,
          appBar: AppBar(
            backgroundColor: Colors.orange.shade300,
            title: Text("Difusi Net",
                style: TextStyle(
                  color: Colors.brown.shade700,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            centerTitle: true,

            //button action
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

          //button hamburg
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.orange.shade400,
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: const Icon(Icons.person)),
                        Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: const Text(
                              "user1",
                              style: TextStyle(),
                            ))
                      ],
                    ),
                  ),
                ),

                //content hamburg
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const AccountPage();
                      }));
                    },
                    child: const Text(
                      "Account",
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const MenuUtama();
                      }));
                    },
                    child: const Text(
                      "Home",
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const PembelianPage();
                      }));
                    },
                    child: const Text(
                      "Pembelian",
                    ),
                  ),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        "Sub Layanan Internet Difusi",
                        style: TextStyle(
                            color: Colors.orange.shade900,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 40,
                  ),

                  Row(
                    children: [
                      Card(
                        color: Colors.orange.shade300,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const RetailPage();
                            }));
                          },
                          child: Container(
                            width: mediaquerywidth * 0.8,
                            height: 70,
                            child: Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Icon(Icons.home)),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text("Retail"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //sub layanan soho
                  Row(
                    children: [
                      Card(
                        color: Colors.orange.shade300,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const SohoPage();
                            }));
                          },
                          child: Container(
                            width: mediaquerywidth * 0.8,
                            height: 70,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Icon(Icons.home),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text("Soho"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //sub layanan soho public
                  Row(
                    children: [
                      Card(
                        color: Colors.orange.shade300,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const SohoPublicPage();
                            }));
                          },
                          child: Container(
                            width: mediaquerywidth * 0.8,
                            height: 70,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Icon(Icons.home),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text("Soho Public"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //sub layanan dedicated
                  Row(
                    children: [
                      Card(
                        color: Colors.orange.shade300,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const DedicatedPage();
                            }));
                          },
                          child: Container(
                            width: mediaquerywidth * 0.8,
                            height: 70,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Icon(Icons.home),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text("Dedicated"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //button logout
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: FilledButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.orange.shade600)),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Hallogin();
                          }));
                        },
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.brown.shade700,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
