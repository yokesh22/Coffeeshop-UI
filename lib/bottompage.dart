import 'package:demoapp/constants.dart';
import 'package:demoapp/homepage.dart';
import 'package:flutter/material.dart';
class Bottompage extends StatefulWidget {

  @override
  _BottompageState createState() => _BottompageState();
}

class _BottompageState extends State<Bottompage> {
  int _selectedIndex = 0;
  static const TextStyle optionstyle=TextStyle(fontSize: 30,fontWeight: FontWeight.bold);

  static List<Widget> _widgetoption=<Widget>[
    Homepage(),
    Text("Page2",style: optionstyle),
    Text("Page3",style: optionstyle),
    Text("Page4",style: optionstyle)
  ];

  void onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: kBackgroundColor,
      body: Center(
        child: _widgetoption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: kBackgroundColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home"
              ),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_rounded,
                size: 30,
              ),
              label: "Shop"
              ),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: "favourite"
              ),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              label: "Notifications"
              )
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor:kBottomIconColor,
          selectedItemColor: kHighLightColor,
          onTap: onItemTapped,
          )
      ),
    );
  }
}