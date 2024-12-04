import 'package:flutter/material.dart';
import 'package:uklcinema/cinema_page.dart';
import 'package:uklcinema/dashboard_page.dart';
import 'package:uklcinema/movies_page.dart';
import 'package:uklcinema/my_booking_pages.dart';
import 'package:uklcinema/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => DashboardPage(),
        '/mybooking': (context) => MyBookingPages(),
        '/movies': (context) => MoviesPage(),
        '/cinema': (context) => CinemaPage(),
      },
    );
  }
}
