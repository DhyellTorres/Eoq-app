import 'package:flutter/material.dart';
import 'package:flutter_eoq/view/Screens/Ask/ask_screen.dart';
import 'package:flutter_eoq/view/Screens/Logged/components/bodyLogged.dart';
import 'package:flutter_eoq/view/Screens/Profile/components/bodyProfile.dart';
import 'package:flutter_eoq/view/Screens/Logged/logged_screen.dart';
import 'package:flutter_eoq/view/Screens/profile/profile_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  final List<Widget> _widgetOptions = [
    BodyLogged(),
    BodyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Image.asset(
          'assets/images/logo.png',
          height: 40,
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AskScreen()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
      body: _widgetOptions[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: OnTabTapped,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.redAccent,
        backgroundColor: Colors.grey[700],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }

  void OnTabTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}
