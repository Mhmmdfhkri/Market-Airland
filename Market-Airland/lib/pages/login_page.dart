import 'package:flutter/material.dart';
import 'package:aplikasitest1/pages/login_page.dart';
import 'package:aplikasitest1/pages/market_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              child: Center(
                  child: Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              )),
            ),
            SizedBox(height: 20),
            Text("Welcome To PickAirlan"),
            SizedBox(height: 10),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Passwor",
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Text("Pindah")),
          ],
        ),
      ),
    );
  }
}