import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Me',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ContactInfoItem(
              icon: Icons.person,
              info: 'Hari Setiawan',
            ),
            SizedBox(height: 10),
            ContactInfoItem(
              icon: Icons.email,
              info: 'harisetiawan14@gmail.com',
            ),
            SizedBox(height: 10),
            ContactInfoItem(
              icon: Icons.alternate_email,
              info: 'hariisetiawann',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactInfoItem extends StatelessWidget {
  final IconData icon;
  final String info;

  const ContactInfoItem({
    required this.icon,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
        SizedBox(width: 10),
        Text(
          info,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
