import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class MapContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Map(),
    );
  }
}

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250, // 地図の高さ
      width: double.infinity, // 幅を画面幅いっぱいに設定
      child: FlutterMap(
          options: MapOptions(
            center: LatLng(35.63081112199544, 139.78551948354982),
            zoom: 16.2,
            interactiveFlags: 0,
          ),
          nonRotatedChildren: [
            RichAttributionWidget(
              attributions: [
                TextSourceAttribution(
                  'OpenStreetMap contributors',
                ),
              ],
            ),
          ],
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(35.708924418203566, 139.94528147752982),
                  width: 80,
                  height: 80,
                  builder: (context) => Icon(Icons.fmd_good, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
