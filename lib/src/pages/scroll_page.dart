import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget> [
          _pageOne(),
          _pageTwo(),
        ]
      )
    );
  }

  Widget _pageOne() {
    // return Center(
    //   child: Text('Page 1'),
    // );
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _components(),
      ],
    );
  }

  Widget _pageTwo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(80, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Welcome',
              style: TextStyle(fontSize: 20),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(80, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage(
          'assets/scroll-1.png',
        ),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _components() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            '11˚',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50
            ),
          ),
          Text(
            'Miércoles',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_up,
            size: 70,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}