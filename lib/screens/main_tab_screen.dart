import 'package:covid19_information_app/screens/about_screen.dart';
import 'package:covid19_information_app/screens/countries_information_screen.dart';
import 'package:covid19_information_app/screens/global_information_screen.dart';
import 'package:flutter/material.dart';

class MainTabScreen extends StatefulWidget {
  @override
  _MainTabScreenState createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {

  int _selectedIndex = 0;
  static List<Widget> _widgetOptionsScreen = <Widget>[
    GlobalInformationScreen(),
    CountriesInformationScreen(),
    AboutScreen()
  ];



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _widgetOptionsScreen[_selectedIndex],
        ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 18,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            title: Text('Global'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            title: Text('Countries'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            title: Text('About'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
