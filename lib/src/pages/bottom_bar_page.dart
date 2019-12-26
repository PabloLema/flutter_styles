import 'dart:math';

import 'package:flutter/material.dart';

class BottomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backGroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _headerComponent(),
                _itemsMenu(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem> [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.calendar_today
      //       ),
      //       title: Container()
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.pie_chart_outlined
      //       ),
      //       title: Container()
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.supervised_user_circle  
      //       ),
      //       title: Container()
      //     ),
      //   ],
      // ),
    );
  }

  Widget _backGroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.4),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(51, 55, 100, 1.0),
            Color.fromRGBO(36, 39, 58, 1.0),
          ]
        )
      ),
    );

    final pinkContainer = Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 92, 189, 1.0),
              Color.fromRGBO(233, 144, 172, 1.0),
            ]
          ),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -110,
          child: pinkContainer
        ) 
      ],
    );
  }

  Widget _headerComponent() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Clasify Transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Clasify this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // 236, 100, 89
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Color.fromRGBO(236, 100, 189, 1.0),
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(
            color: Color.fromRGBO(113, 114, 145, 1.0)
          )
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 30,
            ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bubble_chart,
              size: 30,
            ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              size: 30,
            ),
            title: Container()
          ),
        ],
      ),
    );
  }

  Widget _itemsMenu() {
    return Table(
      children: [
        TableRow(
          children: [
            _createMenuItem(Colors.blue, Icons.border_all, 'General'),
            _createMenuItem(Colors.yellowAccent[200], Icons.directions_bus, 'Bus'),
          ]
        ),
        TableRow(
          children: [
            _createMenuItem(Colors.pink, Icons.radio_button_unchecked, 'Items'),
            _createMenuItem(Colors.purple, Icons.router, 'Routes'),
          ]
        ),
        TableRow(
          children: [
            _createMenuItem(Colors.blue[100], Icons.directions, 'Directions'),
            _createMenuItem(Colors.red[200], Icons.border_all, 'General'),
          ]
        ),
        TableRow(
          children: [
            _createMenuItem(Colors.greenAccent[200], Icons.map, 'Maps'),
            _createMenuItem(Colors.amberAccent[100], Icons.settings, 'Settings'),
          ]
        ),
      ],
    );
  }

  Widget _createMenuItem(Color color, IconData icon, String itemName) {
    // return BackdropFilter(
    //   filter: ImageFilter.blur(
    //     sigmaX: 10,
    //     sigmaY: 10,
    //   ),
    return Container(
      height: 180,
      width: 180,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: color,
            radius: 40,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          Text(
            itemName,
            style: TextStyle(
              color: color
            ),
          ) 
        ],
      ),
    );
  }
}