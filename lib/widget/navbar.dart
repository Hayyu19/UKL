import 'package:flutter/material.dart';
import 'package:uklcinema/cinema_page.dart';
import 'package:uklcinema/dashboard_page.dart';
import 'package:uklcinema/movies_page.dart';
import 'package:uklcinema/my_booking_pages.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  void changeSelectedNavBar(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(
              Icons.home,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage()),
              );
            },
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(
              Icons.book_online,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyBookingPages()),
              );
            },
          ),
          label: 'My Booking',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(
              Icons.movie_creation_rounded,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MoviesPage()),
              );
            },
          ),
          label: 'Movie',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(
              Icons.theaters,
              color: Color.fromARGB(255, 27, 28, 115),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CinemaPage()),
              );
            },
          ),
          label: 'Cinema',
        ),
      ],
    );
  }
}
