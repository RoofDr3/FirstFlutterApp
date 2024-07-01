import 'package:flutter/material.dart';

class PembelianPage extends StatelessWidget {
  const PembelianPage({super.key});

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
                fontSize: 18,
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
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Card(
                  color: Colors.orange.shade500,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Row(
                            children: [
                              Icon(Icons.circle),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Retail",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 45),
                          padding: const EdgeInsets.only(top: 10),
                          child: const Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ID : EX2145",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Kapasitas : 10mb"),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Card(
                  color: Colors.orange.shade500,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Row(
                            children: [
                              Icon(Icons.circle),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Soho",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 45),
                          padding: const EdgeInsets.only(top: 10),
                          child: const Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ID : EX678",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Kapasitas : 100mb"),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
