import 'package:flutter/material.dart';

import '../pages/yourCar.dart';
import '../pages/subscription.dart';
import '../pages/offer.dart';


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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YourCar()),
                    );
                  },
                ),
                Text('Your Cars'),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.local_offer),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Offer()),
                    );
                },
              ),
              Text('Offers'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.subscriptions),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Subscription()),
                    );
                },
              ),
              Text('Subscriptions'),
            ],
          ),
        ],
      ),
    );
  }
}
