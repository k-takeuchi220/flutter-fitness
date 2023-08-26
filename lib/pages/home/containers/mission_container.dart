import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MissionContainer extends StatelessWidget {
  final String name;
  final int goal;
  final int progress;
  final double progressRate;

  const MissionContainer(this.name, this.goal, this.progress, {Key? key})
      : progressRate = progress / goal,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Container(
        child: Row(
          children: [
            Icon(
              Icons.check_circle_outline,
              color: progressRate >= 1 ? Colors.green : Colors.grey
            ),
            Container(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // Adjust column height
                children: [
                  Text("デイリーミッション"),
                  Text(name),
                  LinearProgressIndicator(value: progressRate), // Use progressRate here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
