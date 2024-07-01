import 'package:aplikasi_porto/account.dart';
import 'package:flutter/material.dart';

class EditProvilePage extends StatelessWidget {
  const EditProvilePage({super.key});

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
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(Icons.arrow_back),
              )),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              const Image(image: AssetImage('assets/img/profile2.png')),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "User 1",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "User ID : EX1234",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),

              //text field
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: " Nama ",
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
                          labelText: " Alamat ",
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
                  TextField(
                    decoration: InputDecoration(
                        labelText: " No Telp ",
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
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: FilledButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const AccountPage();
                            },
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.orange.shade300)),
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.brown.shade700,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
