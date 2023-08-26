import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class WeatherForecastContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text("現在地周辺の天気"),
            Row(
              children: [
                Container(width: 30),
                Column(
                  children: [
                    Icon(
                      Icons.sunny,
                      color: Colors.orange,
                    ),
                    Text("晴れ"),
                  ],
                ),
                Container(width: 30),
                Text("気温："),
                Text(
                  "24",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )
                ),
                Text("℃"),

                Container(width: 30),
                Text("降水確率："),
                Text(
                  "20",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )
                ),
                Text("%"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
