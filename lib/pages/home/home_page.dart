import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/containers/weather_forecast_container.dart';
import 'package:flutter_application_1/pages/home/containers/weekly_bar_chart_of_steps_container.dart';
import 'package:flutter_application_1/pages/home/containers/mission_container.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('活動量', 3500, const Color(0xFFAACC00)),
      ChartData('非活動量', 6500, const Color(0xFFE9EDEE)),
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(backgroundColor: Colors.green,),
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Container(
                  height: 340,
                ),
                ///////////仮のデータ////////////
                WeeklyWeeklyBarChartOfStepContainer(),
                WeatherForecastContainer(),
                MissionContainer("ログインする", 1, 1),
                MissionContainer("歩数を5000歩以上歩く", 5000, 3500),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(.2),
              ),
            ),
            Positioned(
              top: 80,
              child: Container(
                width: 240,
                height: 240,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 50,
              child: SfCircularChart(
                series: <CircularSeries>[
                  DoughnutSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    pointColorMapper: (ChartData data, _) => data.color,
                    innerRadius: '80%',
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 150,
              child: Column(
                children: [
                  Icon(Icons.directions_walk),
                  Text(
                    '3500',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/10000',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 260,
              right: 30,
              child: Column(
                children: [
                  Text(
                    '10.12',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'kcal',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 260,
              left: 30,
              child: Column(
                children: [
                  Text(
                    '10.12',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'km',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child:
                    const Text(
                      "過去",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child:
                  Icon(
                    Icons.emoji_events,
                    color: Colors.blueGrey
                    ,
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color = Colors.transparent]);
  final String x;
  final double y;
  final Color color;
}
