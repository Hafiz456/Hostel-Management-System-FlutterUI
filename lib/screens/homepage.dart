import 'package:flutter/material.dart';
import 'package:myproject1/screens/contactus.dart';
import 'package:myproject1/screens/login_screen.dart';
import 'package:myproject1/screens/allotment.dart';
import 'package:myproject1/screens/complaint.dart';
import 'package:myproject1/screens/packages.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Boys Hostel Sukkur"),
          backgroundColor: Colors.cyan[400],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text(
                "Welcome to Boys Hostel Sukkur",
                textScaleFactor: 2,
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 20,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.cyan[700]!,
                ),
              ),
            ),
            Center(
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                children: [
                  TableRow(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Packages()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 120.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF73EEF5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.add_shopping_cart,
                              color: Colors.blueAccent,
                              size: 40.0,
                            ),
                            Text(
                              "Packages",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Allotment()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 120.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF73EEF5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.local_offer,
                              color: Colors.blueAccent,
                              size: 40.0,
                            ),
                            Text(
                              "Allotment",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Complaints()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 120.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF73EEF5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.assignment,
                              color: Colors.blueAccent,
                              size: 40.0,
                            ),
                            Text(
                              "Complaints",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => ContactUs()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 120.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF73EEF5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.contacts,
                              color: Colors.blueAccent,
                              size: 40.0,
                            ),
                            Text(
                              "Contact Us",
                              style: TextStyle(
                                color: Color(0xFF03A9F4),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Color(0xFF73EEF5),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
            ),
          ],
        ));
  }
}
