import 'package:flutter/material.dart';

class ScrollSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 100.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Scroll',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.compare_arrows,
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
