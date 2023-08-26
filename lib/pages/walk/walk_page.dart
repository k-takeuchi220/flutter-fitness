import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/containers/mission_container.dart';
import 'package:flutter_application_1/pages/walk/containers/destination_container.dart';
import 'package:flutter_application_1/pages/walk/containers/map_container.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class WalkPage extends StatefulWidget {
  const WalkPage({Key? key}) : super(key: key);

  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<WalkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.green,
        ),
      ),
      body: Column(
        children: [
          MapContainer(),
          Container(
            height:30,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            alignment: Alignment.center,
            child: Text(
              "お散歩 目的地",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 5), // 上部のスペース
                  DestinationContainer("東京都水の科学館"),
                  DestinationContainer("東京都水の科学館"),
                  DestinationContainer("東京都水の科学館"),
                  DestinationContainer("東京都水の科学館"),
                  DestinationContainer("東京都水の科学館"),
                  DestinationContainer("東京都水の科学館"),
                  DestinationContainer("東京都水の科学館"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
