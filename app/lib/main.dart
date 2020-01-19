import 'package:flutter/material.dart';

import './models/data.dart';
import './widgets/cardScrollWidget.dart';
import './widgets/bottomBar.dart';
import './widgets/scrollSign.dart';
import './pages/profile.dart';
import './pages/offer.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      bottomNavigationBar: BottomBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 30.0,
                bottom: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          //CustomIcons.menu, fontFamily is not with us
                          Icons.account_box,
                          color: Colors.black,
                          size: 32.0,
                        ),
                        onPressed: () {},
                      ),
                      Text('Account', style: TextStyle(fontSize: 12.0),),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.local_offer),
                        iconSize: 16.0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Offer()),
                          );
                        },
                      ),
                      Text('Offers', style: TextStyle(fontSize: 12.0),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "We Serve",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  ScrollSign(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Stack(
                children: <Widget>[
                  CardScrollWidget(currentPage),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: images.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Upcoming Bookings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFff6e6e),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 22.0,
                          vertical: 6.0,
                        ),
                        child: Text(
                          "Recent",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "9+ Bookings",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                    bottom: 10.0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image.asset(
                      "assets/images/booking.png",
                      width: 296.0,
                      height: 222.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
