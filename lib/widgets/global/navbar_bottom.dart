import 'package:cactus_hack/screens/profile/profile.dart';
import 'package:cactus_hack/screens/search/search.dart';
import 'package:cactus_hack/screens/wallet/wallet.dart';
import 'package:flutter/material.dart';

class NavbarBottom extends StatefulWidget {
  const NavbarBottom({super.key});

  @override
  State<NavbarBottom> createState() => _NavBarState();
}

class _NavBarState extends State<NavbarBottom> {
  int pagenumber = 0;

  List pages = <Widget>[
    const Wallet(),
    const Search(),
    const Profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      pagenumber = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<String> pageTitles = ['Wallet', 'Search', 'Profile'];


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          pageTitles[pagenumber],
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: pages[pagenumber],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: pagenumber,
        onTap: onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}