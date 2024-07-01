import 'package:aplikasi_porto/editprovile.dart';
import 'package:aplikasi_porto/pembelian.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

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
              //picture profile
              Container(
                alignment: Alignment.center,
                child: const Column(
                  children: [
                    Image(image: AssetImage('assets/img/profile2.png')),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "User 1",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "User ID : EX1234",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),

              //description accout
              Container(
                padding: const EdgeInsets.only(top: 30),
                margin: const EdgeInsets.only(left: 50),
                child: const Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama    :  Nama Lengkap Orang"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Alamat  :  Jl.Akhirat, Kec.Dunia Lain"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("No Telp :  08222222222"),
                      ],
                    )
                  ],
                ),
              ),

              //button edit
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const EditProvilePage();
                        },
                      ),
                    );
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                  child: Text(
                    "Edit",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade700),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
