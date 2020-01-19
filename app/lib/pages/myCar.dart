import 'package:flutter/material.dart';

import '../models/data.dart';

class MyCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text(
          'My Cars',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orangeAccent[100],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Center(
            child: Column(
              children: <Widget>[
                yourCars.length <= 0
                    ? Column(
                        children: <Widget>[
                          Text(
                            'No Cars Registered',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Image.asset(
                              'assets/images/defaultPage.jpeg',
                            ),
                          ),
                        ],
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        alignment: Alignment.center,
                        height: 400.0,
                        child: ListView.builder(
                          itemCount: yourCars.length,
                          itemBuilder: (ctx, index) {
                            return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                color: Colors.redAccent[100],
                                child: Row(
                                  children: <Widget>[
                                    FittedBox(
                                      fit: BoxFit.contain,
                                      child: Image.asset(
                                        'assets/images/carModel.jpeg',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal : 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            '${yourCars[index].model}',
                                            style: TextStyle(
                                              fontSize: 32.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '${yourCars[index].brand}',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '${yourCars[index].fuelType}',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                          },
                        ),
                      ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Add Car'),
                      onPressed: () {},
                    ),
                    OutlineButton(
                      color: Colors.orangeAccent[100],
                      onPressed: () {
                        // Navigate back to first route when tapped.
                        Navigator.pop(context);
                      },
                      child: Text('Go back!'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
