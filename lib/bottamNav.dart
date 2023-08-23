import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterscreen/Outlet.dart';
import 'package:flutterscreen/catagory.dart';
import 'package:flutterscreen/supermarket.dart';

//Catagory

class BottomNavigationScreen extends StatefulWidget {


  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int index = 0;
  List<Widget> pages = [
    HomeScreen(),
    MaterialList(),
    Callhistory(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        currentIndex: index,
        showUnselectedLabels: true,
        iconSize: 35,
        selectedItemColor: Colors.deepPurple,
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 18,
        onTap: (int currentidx){
          setState(() {
            index = currentidx;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label : 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label : 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label : 'Account'),
        ],
      ),
    );
  }
}
