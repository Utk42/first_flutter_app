import 'package:flutter/material.dart';

class YourCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: SingleChildScrollView(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              // Navigate back to first route when tapped.
              Navigator.pop(context);
            },
            child: Text('Go back!'),
          ),
        ),
      ),
    );
  }
}
