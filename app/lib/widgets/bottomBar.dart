import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      height: 64.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Flexible(
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.directions_car),
                  onPressed: () {},
                ),
                Text('Your Cars'),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              Text('Home'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.subscriptions),
                onPressed: () {},
              ),
              Text('Subscriptions'),
            ],
          ),
        ],
      ),
    );
  }
}
