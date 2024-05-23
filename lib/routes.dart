import 'package:flutter/material.dart';
import 'screen.dart';
import 'portofolio.dart';
import 'contact.dart';
import 'skil.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/about':
        return MaterialPageRoute(builder: (_) => AboutPage());
      case '/portofolio':
        return MaterialPageRoute(builder: (_) => Portofolio());
      case '/contact':
        return MaterialPageRoute(builder: (_) => Contact());
      case '/skill':
        return MaterialPageRoute(builder: (_) => Skill());

      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.redAccent, // Warna latar belakang merah
        appBar: AppBar(
          title: Text(
            "Error",
            style: TextStyle(color: Colors.white), // Warna teks putih
          ),
          backgroundColor: Colors.redAccent, // Warna latar belakang merah
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error,
                size: 50,
                color: Colors.white, // Warna ikon putih
              ),
              SizedBox(height: 20),
              Text(
                'Oops!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna teks putih
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Something went wrong.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // Warna teks putih
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
