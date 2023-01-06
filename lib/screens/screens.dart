import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shop_app/patterns/colors_flyweight.dart';
import 'package:shop_app/screens/cart_screen.dart';

import 'home_screen.dart';

class Screens extends StatefulWidget {
  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIdex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w, //colors_flyweight
      body: _widgetOptions.elementAt(_selectedIdex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: w, boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: b.withOpacity(0.1), //colors_flyweight
          ),
        ]),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor:Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: w, //colors_flyweight
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal:20 ,vertical: 12),
              duration: Duration(microseconds:400),
              tabBackgroundColor:ra, //colors_flyweight
              color: b, //colors_flyweight
              tabs: [
                GButton(icon: LineIcons.home, text: 'Home'),
                GButton(icon: LineIcons.shoppingBag, text: 'Cart'),
                GButton(icon: LineIcons.heart, text: 'Wishlist'),
                GButton(icon: LineIcons.user, text: 'Account'),
              ],
              selectedIndex: _selectedIdex,
              onTabChange: (index){
                setState(() {
                  _selectedIdex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
