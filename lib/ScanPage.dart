import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/WifiInfo.dart';
import 'package:overlay_support/overlay_support.dart';
import 'Utils.dart';

class ScanPage extends StatelessWidget{
  static final String title='Sucure';

  @override
  Widget build(BuildContext context) => OverlaySupport(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scan(title: title),
    ),
  );
}
class Scan extends StatefulWidget {

  final String title;

  const Scan({
    required this.title,
  });

  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan>{
  
  late StreamSubscription subscription;
  
  @override
  void initState() {
    super.initState();

    subscription =
        Connectivity().onConnectivityChanged.listen(showConnectivitySnackBar);
  }

  @override
  void dispose() {
    subscription.cancel();

    super.dispose();
  }

  void showConnectivitySnackBar(ConnectivityResult result) {
    final hasInternet = result != ConnectivityResult.none;
    final message = hasInternet
        ? 'You are connected!'
        : 'You have no internet';
    final color = hasInternet ? Colors.green : Colors.red;

    Utils.showTopSnackBar(context, message, color);
  }
  
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
              Positioned(
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
              ),Positioned(
                  top: MediaQuery
                      .of(context)
                      .size
                      .height * 3 / 4-50,
                  left: 75,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(76, 175, 60, 1.0),
                        onPrimary: Colors.black,
                        textStyle: const TextStyle(fontSize: 25)),
                    onPressed: () async{
                      final result = await Connectivity().checkConnectivity();
                      showConnectivitySnackBar(result);
                    },
                    child: Text("Check connectivity"),
                  )
              ), Positioned(
                  top: MediaQuery
                      .of(context)
                      .size
                      .height * 3 / 4,
                  left: 135,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(233, 94, 94, 1),
                        onPrimary: Colors.black,
                        textStyle: const TextStyle(fontSize: 25)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new WifiInfo('AndroidWifi','a','a','a','a','a','a','a','a','a'))
                      );
                    },
                    child: Text("Proceed"),
                  )
              ),
              Positioned( //The Circle
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
  }
}
