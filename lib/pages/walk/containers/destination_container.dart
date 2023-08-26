import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DestinationContainer extends StatelessWidget {
  final String name;
  const DestinationContainer(this.name, {Key? key}): super(key: key);

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
            Container(width: 5),
            Column(
              children: [
                Container(height:8),
                Icon(
                  Icons.flag,
                  color: Colors.red,
                ),
                Text("11.12km"),
              ],
            ),
            Container(width: 50),
            Text(name),
          ],
        ),
      ),
    );
  }
}
