
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WifiInfo extends StatelessWidget{
  bool activated=false;
  bool deactivated=false;
  String SSID;
  String SecurityType;
  String LinkSpeed;
  String IPv6;
  String IPv4;
  String NetworkBand;
  String DriverVersion;
  String MacAddress;
  String Manufacturer;
  String Description;
  var tcVisibility=false;
  WifiInfo(this.SSID,this.SecurityType,this.LinkSpeed,this.IPv6,this.IPv4,this.NetworkBand,this.DriverVersion,this.MacAddress,this.Manufacturer,this.Description);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(252, 221, 236, 1),
        body: Column(
            children: [
              SizedBox(height:60),
              Container(
                  height:35,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 94, 94, 1),
                  ),
                  child: Text(
                    'SUCURE', textAlign: TextAlign.left, style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Quando',
                    fontSize: 22,
                    letterSpacing: 0.5 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                  ),)
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        Text(
                          'Wifi list',
                          style: TextStyle(
                              fontFamily: 'AndikaNewBasic',
                              fontSize: 22,
                              fontWeight: FontWeight.normal),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, left: 25),
                          child: Divider(
                            color: Colors.black,
                            thickness:1.2,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                children:[
                                  Expanded(
                                    child: Stack(
                                        children: [
                                          Text(
                                            'SSID',
                                            style: TextStyle(
                                                fontFamily: 'AndikaNewBasic',
                                                fontSize: 22,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(width:50),
                                          Positioned(right:15,child : Text(SSID, textAlign: TextAlign.right, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
                                            fontFamily: 'Quando',
                                            fontSize: 21,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                          ),))
                                        ]
                                    ),
                                  ),
                                ]
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                                children:[
                                  Expanded(
                                    child: Stack(
                                        children: [
                                          Text(
                                            'Security Type',
                                            style: TextStyle(
                                                fontFamily: 'AndikaNewBasic',
                                                fontSize: 22,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(width:50),
                                          Positioned(right:15,child : Text('WPA', textAlign: TextAlign.right, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
                                            fontFamily: 'Quando',
                                            fontSize: 21,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                          ),))
                                        ]
                                    ),
                                  ),
                                ]
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                                children:[
                                  Expanded(
                                    child: Stack(
                                        children: [
                                          Text(
                                            'Linked Speed',
                                            style: TextStyle(
                                                fontFamily: 'AndikaNewBasic',
                                                fontSize: 22,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(width:50),
                                          Positioned(right:15,child : Text('54/54 (mbps)', textAlign: TextAlign.right, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
                                            fontFamily: 'Quando',
                                            fontSize: 21,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                          ),))
                                        ]
                                    ),
                                  ),
                                ]
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                                children:[
                                  Expanded(
                                    child: Stack(
                                        children: [
                                          Text(
                                            'IPv6 address',
                                            style: TextStyle(
                                                fontFamily: 'AndikaNewBasic',
                                                fontSize: 22,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(width:50),
                                          Positioned(right:15,child : Text('fe80:7d49:9166:5bc7', textAlign: TextAlign.right, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
                                            fontFamily: 'Quando',
                                            fontSize: 21,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                          ),))
                                        ]
                                    ),

                                  ),
                                ]
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                                children:[
                                  Expanded(
                                    child: Stack(
                                        children: [
                                          Text(
                                            'IPv4 address',
                                            style: TextStyle(
                                                fontFamily: 'AndikaNewBasic',
                                                fontSize: 22,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(width:50),
                                          Positioned(right:15,child : Text('192.168.0.122', textAlign: TextAlign.right, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
                                            fontFamily: 'Quando',
                                            fontSize: 21,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                          ),))
                                        ]
                                    ),
                                  ),
                                ]
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                                children:[
                                  Expanded(
                                    child: Stack(
                                        children: [
                                          Text(
                                            'Network band',
                                            style: TextStyle(
                                                fontFamily: 'AndikaNewBasic',
                                                fontSize: 22,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(width:50),
                                          Positioned(right:15,child : Text('2.4 GHz', textAlign: TextAlign.right, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
                                            fontFamily: 'Quando',
                                            fontSize: 21,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                          ),))
                                        ]
                                    ),
                                  ),
                                ]
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                                children:[
                                  Expanded(
                                    child: Stack(
                                        children: [
                                          Text(
                                            'Mac address',
                                            style: TextStyle(
                                                fontFamily: 'AndikaNewBasic',
                                                fontSize: 22,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(width:50),
                                          Positioned(right:15,child : Text('FC-F8-AE-17-EC-CE', textAlign: TextAlign.right, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
                                            fontFamily: 'Quando',
                                            fontSize: 21,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                          ),))
                                        ]
                                    ),
                                  ),
                                ]
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                                children:[
                                  Expanded(
                                    child: Stack(
                                        children: [
                                          Text(
                                            'Description',
                                            style: TextStyle(
                                                fontFamily: 'AndikaNewBasic',
                                                fontSize: 22,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(width:50),
                                          Positioned(right:15,child : Text('Dual Band Wireless', textAlign: TextAlign.right, style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6000000238418579),
                                            fontFamily: 'Quando',
                                            fontSize: 21,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                          ),))
                                        ]
                                    ),
                                  ),
                                ]
                            )
                        ),
                      ]
                  ),
                ),
              ),

              Visibility(
                  visible: tcVisibility,
                  child: Text(
                    'Activated',
                    style: TextStyle(color: Colors.red),
                  )),
              Row(children: [
                SizedBox(width:55),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary : Color.fromRGBO(233, 94, 94, 1),
                      textStyle: const TextStyle(fontSize: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                  onPressed: () {
                    tcVisibility=true;
                  },
                  child: const Text('Disconnect'),
                ),
                SizedBox(width:25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary : Color.fromRGBO(233, 94, 94, 1),
                      textStyle: const TextStyle(fontSize: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                  onPressed: () {},
                  child: const Text('Activate'),
                ),
              ],)
            ]
        )
    );
  }
}

