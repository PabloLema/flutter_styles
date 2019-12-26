import 'package:flutter/material.dart';

class BasicPge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: Image(
                image: NetworkImage(
                  'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
                ),
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(32.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                              // fontSize: 20.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(
                              // fontSize: 18.0,
                              color: Colors.grey[500],
                            ),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red[500],
                      // size: 30.0,
                    ),
                    Text(
                      '41',
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
              ),
            ),
            _createButtons(),
            _textCreate(),
            _textCreate(),
            _textCreate(),
            _textCreate(),
            _textCreate(),
            _textCreate(),
            _textCreate(),
            _textCreate(),
          ],
        ),
      )
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _iconMenu(Icons.call, 'Call'),
        _iconMenu(Icons.near_me, 'Route'),
        _iconMenu(Icons.share, 'Share'),
      ],
    );
  }

  Widget _iconMenu(IconData icon, String textIcon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(icon),
          color: Colors.blue,
          onPressed: () {
            print(textIcon);
          },
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            textIcon,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.blue
            ),
          ),
        )
      ],
    );
  }

  Widget _textCreate() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(32),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
            softWrap: true,
            textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}