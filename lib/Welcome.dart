import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ScanPage.dart';

class Welcome extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
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
        child: Stack(
            children: <Widget>[
              const Positioned(
                  top: 323,
                  left: 110,
                  child: Text(
                    'SUCURE', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Quando',
                      fontSize: 48,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ), Positioned(
                  top: 128,
                  left: 110,
                  child: Container(
                      width: 189,
                      height: 182,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Ellipse1.png'),
                            fit: BoxFit.fitWidth
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.elliptical(189, 182)),
                      )
                  )
              ), Positioned(
                  top:  MediaQuery
                      .of(context)
                      .size
                      .height*3/4,
                  left: 95,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(233, 94, 94, 1),
                        onPrimary: Colors.black,
                        textStyle: const TextStyle(fontSize: 25)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScanPage())
                      );
                    },
                    child: const Text("Let's get started"),
                  )
              ), Positioned( //The Circle
                  top: -20,
                  left: -100,
                  child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 94, 94, 1),
                        borderRadius: BorderRadius.all(
                            Radius.elliptical(200, 200)),
                      )
                  )
              ), Positioned( //The Circles
                  top: -128,
                  left: -32,
                  child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 94, 94, 1),
                        borderRadius: BorderRadius.all(
                            Radius.elliptical(200, 200)),
                      )
                  )
              )
            ]
        )
    );
  } //First page
}