import 'package:flutter/material.dart';

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portfolio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('asset/images/ww.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              "Hari Setiawan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Web Developer",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
