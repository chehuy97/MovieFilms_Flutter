import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefilm/ui/component/MovieAppBar.dart';
import 'package:moviefilm/ui/favorite/FavoriteScreen.dart';
import 'package:moviefilm/ui/home/HomeScreen.dart';
import 'package:moviefilm/ui/settings/SettingScreen.dart';

class MovieBottomBar extends StatefulWidget {
  MovieBottomBar({Key key}) : super(key: key);

  @override
  _MovieBottomBarState createState() => _MovieBottomBarState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MovieBottomBarState extends State<MovieBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    // Container(
    //   child: MaterialApp(
    //     home: HomeScreen(),
    //     debugShowCheckedModeBanner: false,
    //     initialRoute: '/home',
    //     routes: {
    //       '/home': (context) => HomeScreen(),
    //       '/moviedetail': (context) => MovieDetail()
    //     },
    //   ),
    // ),
    HomeScreen(),
    FavoriteScreen(),
    SettingScreen(),
    // InforScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String titleName(int index){
    switch(index){
      case 0: {
        return "Home";
      }
      case 1: {
        return "Favorite";
      }
      case 2: {
        return "Setting";
      }
      // case 3: {
      //   return "About";
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MovieAppBar(title: titleName(_selectedIndex),),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home.png"), color: Colors.grey,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/heart.png"), color: Colors.grey,),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/setting.png"),  color: Colors.grey,),
            label: 'Settings',
          ),
          // BottomNavigationBarItem(
          //   icon: ImageIcon(AssetImage("assets/images/infor.png"),  color: Colors.grey,),
          //   label: 'About',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}


