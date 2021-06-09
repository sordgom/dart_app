import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/WifiInfo.dart';

class Wifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String wifi1='BigBoy @unifi';
    String wifi2='Free wifi';
    String wifi3='Aloha cafe';
    String wifi4='Cop mall';
    return Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(252, 221, 236, 1),
        ),
        child: ListView(
          padding: const EdgeInsets.all(60),
          children: <Widget>[
            Container(
              height: 50,
              color: Color.fromRGBO(233, 94, 94, 1),
              child:  ElevatedButton.icon(
                label: Text(wifi1,textAlign: TextAlign.right),
                icon: Icon(
                    Icons.wifi,
                    size:24.0
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(233, 94, 94, 1),
                    onPrimary: Colors.black,
                    textStyle: const TextStyle(fontSize: 25)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new WifiInfo(wifi1,'a','a','a','a','a','a','a','a','a'))
                  );
                },
              ),
            ),Container(
              height: 50,
              color: Color.fromRGBO(233, 94, 94, 1),
              child:  ElevatedButton.icon(
                label: Text(wifi2),
                icon: Icon(
                  Icons.wifi,
                  size:24.0,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(233, 94, 94, 1),
                    onPrimary: Colors.black,
                    textStyle: const TextStyle(fontSize: 25)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new WifiInfo(wifi2,'a','a','a','a','a','a','a','a','a'))
                  );
                },
              ),
            ),Container(
              height: 50,
              color: Color.fromRGBO(233, 94, 94, 1),
              child:  ElevatedButton.icon(
                label: Text(wifi3),
                icon: Icon(
                  Icons.wifi,
                  size:24.0,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(233, 94, 94, 1),
                    onPrimary: Colors.black,
                    textStyle: const TextStyle(fontSize: 25)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new WifiInfo(wifi3,'a','a','a','a','a','a','a','a','a'))
                  );
                },
              ),
            ),Container(
              height: 50,
              color: Color.fromRGBO(233, 94, 94, 1),
              child:  ElevatedButton.icon(
                label: Text(wifi4),
                icon: Icon(
                  Icons.wifi,
                  size:24.0,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(233, 94, 94, 1),
                    onPrimary: Colors.black,
                    textStyle: const TextStyle(fontSize: 25)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new WifiInfo(wifi4,'a','a','a','a','a','a','a','a','a'))
                  );
                },
              ),
            ),
          ],
        )
    );
  }
} //Thir