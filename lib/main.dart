import 'package:flutter/material.dart';

import 'books.dart';
import 'diagnose.dart';

void main() {
  runApp(plt());
}

class plt extends StatefulWidget {
  plt({super.key});

  @override
  State<plt> createState() => _pltState();
}

class _pltState extends State<plt> {
  int currindex = 0;
  List<Widget> screens = [
    Column(
      children: [
        const SizedBox(
          height: 45,
        ),
        Text(
          " Check Your Plant Health !",
          style: TextStyle(
              color: Colors.teal[300], fontSize: 30, fontFamily: 'Lobster'),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
            width: 200,
            height: 160,
            decoration: BoxDecoration(
                color: Colors.teal[300],
                borderRadius: BorderRadius.circular(70)),
            child: const Icon(
              Icons.add,
              color: Colors.white70,
              size: 120,
            )),
        const SizedBox(
          height: 2,
        ),
        Expanded(
            child: Container(
          child: const Image(
            image: AssetImage('assets/back.jpg'),
          ),
        )),
        const SizedBox(
          height: 40,
        ),
      ],
    ),
    diagnose(),
    diagnose(),
    diagnose(),
    diagnose(),
    diagnose(),
    books()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfff0f0f0),
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
        ),
        body: screens[currindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currindex = index;
            });
          },
          currentIndex: currindex,
          backgroundColor: Colors.teal[200],
          selectedItemColor: Colors.green[900],
          unselectedItemColor: Colors.teal[400],
          selectedLabelStyle: const TextStyle(fontFamily: 'Merriweather'),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo), label: 'Diagnose'),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt), label: 'Identify'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp), label: 'Books'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add_alt_sharp), label: 'Experts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.recycling), label: 'Recycling Companies'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_on_outlined), label: 'Reminder'),
          ],
        ),
      ),
    );
  }
}
