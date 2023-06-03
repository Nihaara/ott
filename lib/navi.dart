import 'package:flutter/material.dart';
import 'package:ott/profilepage.dart';
import 'package:ott/signin.dart';
import 'package:ott/vdes.dart';

import 'homepage.dart';
class Navi extends StatefulWidget {
  const Navi({Key? key}) : super(key: key);

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  int  _index = 0 ;
  final Nav =[


    Mainpage(),
    Profile(),


  ];

  void tap(index)

  {
    setState(() {
      _index = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Nav[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "User Profile"),


        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}
