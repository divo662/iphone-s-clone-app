import 'package:flutter/material.dart';

import 'contacts.dart';
import 'favor.dart';
import 'keypad.dart';
import 'recents.dart';
import 'voicemail.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 1;
  final List<Widget> pages = [
    const Favor(),
    const RecentPage(),
    const ContactPage(),
    const Keypad(),
    const Voicemail()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        items: const [
          BottomNavigationBarItem(
            label: "Favourites",
            icon: Icon(Icons.star_sharp),

          ),
          BottomNavigationBarItem(
            label: "Recents",
            icon: Icon(Icons.access_time_filled_sharp, ),
          ),
          BottomNavigationBarItem(
            label: "Contacts",
            icon: Icon(Icons.person_2_rounded,),
          ),
          BottomNavigationBarItem(
            label: "Keypad",
            icon: Icon(Icons.dialpad_sharp, ),
          ),
          BottomNavigationBarItem(
            label: "Voicemail",
            icon: Icon(Icons.voicemail,),

          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue.shade600,
        selectedIconTheme: IconThemeData(color: Colors.blue.shade700),
        unselectedItemColor: Colors.white,
        iconSize: 36,
        onTap: (index){
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
