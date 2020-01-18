import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {

  final iconName;
  final iconText;

  CustomIconButton({this.iconName, this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.down,
            children: <Widget>[
              IconButton(icon: Icon(Icons.directions_car),onPressed: (){},),
              Text('Your Cars'),
            ],
          );
  }
}