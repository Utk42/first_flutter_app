import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text(
          'Offer',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orangeAccent[100],
      ),
      body: SingleChildScrollView(
        child: Center(
           child: OutlineButton(
            color: Colors.orangeAccent[100],
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